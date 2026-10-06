#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"
stage=$(mktemp -d "$root/.work/regen.XXXXXX")
trap 'rm -rf "$stage"' EXIT
python "$root/codegen/prepare-spec.py" "$stage/openapi.json"
docker run --rm --user "$run_uid" --network none -v "$root/codegen:/codegen:ro" -v "$stage:/output" openapitools/openapi-generator-cli:v7.26.0@sha256:a304ddf1e2e5f24f68fa3153568d6174cea4959d09aa8e3db6d526fd0782326d generate -i /output/openapi.json -g dart-dio -c /codegen/config.json -o /output/sdk > "$root/.work/generation.txt" 2>&1
for fix in responses imports diagnostics exceptions deadlines transport paths optional-bodies release; do
  python "$root/codegen/fix-dart-$fix.py" "$stage/sdk"
done
cp "$root/pubspec.lock" "$stage/sdk/pubspec.lock"
docker run --rm "${identity[@]}" -v "$stage/sdk:/sdk" -v mailchannels-dart-pub:/pub-cache -w /sdk "$image" dart pub get --enforce-lockfile
docker run --rm "${identity[@]}" --network none -v "$stage/sdk:/sdk" -v mailchannels-dart-pub:/pub-cache -w /sdk "$image" dart run build_runner build --delete-conflicting-outputs
python - "$stage/sdk" "$root" <<'COPY'
import shutil,sys
from pathlib import Path
source,target=map(Path,sys.argv[1:])
shutil.rmtree(target/'lib')
shutil.copytree(source/'lib',target/'lib')
for name in ['pubspec.yaml','README.md','LICENSE','CHANGELOG.md','.pubignore']:
    shutil.copy2(source/name,target/name)
shutil.copytree(source/'example',target/'example',dirs_exist_ok=True)
COPY

#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"
sdk="$root"
mkdir -p "$root/.work"
archive="$root/.work/mailchannels_email_api-0.1.0.tgz"
# This explicit release file set includes all generated model implementations.
tar -czf "$archive" -C "$sdk" lib example pubspec.yaml README.md LICENSE CHANGELOG.md
stage=$(mktemp -d "$root/.work/dart-consumer.XXXXXX")
trap 'rm -rf "$stage"' EXIT
mkdir "$stage/package" "$stage/consumer" "$stage/consumer/bin"
tar -xzf "$archive" -C "$stage/package"
cp "$root/example/mailchannels_email_api_example.dart" "$stage/consumer/bin/example.dart"
# Maintained native fixtures are the isolated consumer's executable checks.
cp "$root/tests/"*.dart "$stage/consumer/bin/"
cat > "$stage/consumer/pubspec.yaml" <<'YAML'
name: mailchannels_artifact_consumer
publish_to: none
environment:
  sdk: '>=3.11.0 <4.0.0'
dependencies:
  mailchannels_email_api:
    path: ../package
  dio: ^5.11.1
  built_value: ^8.13.0
  built_collection: ^5.1.2
YAML
image=dart@sha256:193a4d037dcef48b56f2a3544f053f4ef3b5e9865953f8f5ff2a284554da567a
args=(--rm "${identity[@]}" --network none -v "$stage:/artifact" -v mailchannels-dart-pub:/pub-cache -w /artifact/consumer)
docker run "${args[@]}" "$image" dart --suppress-analytics pub get --offline
# Prove the consumer did not resolve the package's dev/code-generation tools.
python - "$stage/consumer/pubspec.lock" <<'PY'
import sys,yaml
p=yaml.safe_load(open(sys.argv[1]))['packages']
assert 'build_runner' not in p and 'built_value_generator' not in p
print(f"Consumer resolved {len(p)} packages; no code-generation dev tools")
PY
docker run "${args[@]}" "$image" dart --suppress-analytics analyze bin/example.dart
for probe in send_response_probe response_variants_probe diagnostics_probe exception_probe redirect_probe cancellation_probe subaccount_contract_probe webhook_suppression_probe metrics_contract_probe domain_contract_probe; do
  docker run "${args[@]}" "$image" dart --suppress-analytics run "bin/$probe.dart"
done
# TLS fixture already has its own isolated runner; the consumer runs76 non-TLS checks.
sha256sum "$archive"
echo 'Extracted Dart artifact consumer passed76 checks on Dart3.11.0; example analyzed, never executed'

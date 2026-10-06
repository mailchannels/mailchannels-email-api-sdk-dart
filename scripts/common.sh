#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
case "${DART_VERSION:-3.13.1}" in
  3.11.0) image=dart@sha256:193a4d037dcef48b56f2a3544f053f4ef3b5e9865953f8f5ff2a284554da567a ;;
  3.12.0) image=dart@sha256:1bc3667e7e5d647bf0f00d62673790b06719ba39e108776a7cc3529887e81fb7 ;;
  3.13.1) image=dart@sha256:d3f19cf5c18a7939d6af3f0896b2e9fec3f31f7ba3a2f88bfe6181e903084a51 ;;
  *) echo 'Unsupported Dart version' >&2;exit 2 ;;
esac
mkdir -p "$root/.work"
run_uid="$(id -u):$(id -g)"
case $(docker info --format '{{json .SecurityOptions}}') in *rootless*) run_uid=0:0 ;; esac
docker run --rm -v mailchannels-dart-pub:/pub-cache "$image" chown -R "$run_uid" /pub-cache
identity=(--user "$run_uid" --tmpfs /root:rw,mode=1777 -e PUB_CACHE=/pub-cache)
args=(--rm "${identity[@]}" -v "$root:/sdk" -v mailchannels-dart-pub:/pub-cache -w /sdk)

#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"
docker run "${args[@]}" "$image" dart --suppress-analytics --version
docker run "${args[@]}" "$image" dart --suppress-analytics pub get --enforce-lockfile
for probe in send_response_probe response_variants_probe diagnostics_probe exception_probe redirect_probe cancellation_probe subaccount_contract_probe webhook_suppression_probe metrics_contract_probe domain_contract_probe; do
  docker run "${args[@]}" --network none "$image" dart --suppress-analytics run "tests/$probe.dart"
done
tls_dir=$(mktemp -d)
trap 'rm -rf "$tls_dir"' EXIT
python "$root/scripts/tls-certificates.py" "$tls_dir"
python - "$tls_dir" <<'CERT'
from pathlib import Path
from cryptography import x509
from cryptography.hazmat.primitives import serialization
import os,sys
os.umask(0o077)
for p in Path(sys.argv[1]).glob('*.der'):
    if p.stem.endswith('-key'):
        key=serialization.load_der_private_key(p.read_bytes(),None)
        data=key.private_bytes(serialization.Encoding.PEM,serialization.PrivateFormat.PKCS8,serialization.NoEncryption())
    else:
        data=x509.load_der_x509_certificate(p.read_bytes()).public_bytes(serialization.Encoding.PEM)
    p.with_suffix('.pem').write_bytes(data)
CERT
docker run "${args[@]}" --network none --add-host fixture.test:127.0.0.1 -v "$tls_dir:/tls:ro" "$image" dart --suppress-analytics run tests/tls_probe.dart /tls
docker run "${args[@]}" --network none "$image" dart --suppress-analytics analyze lib example
echo 'All80 native checks and library/example analyzer passed'

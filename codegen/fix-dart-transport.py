"""Disable automatic redirects on the default client to avoid forwarding API keys, and name the SDK in User-Agent."""
from pathlib import Path
import json
import sys
version=json.loads((Path(__file__).parent/'config.json').read_text())['pubVersion']
p=Path(sys.argv[1])/'lib/src/api.dart';text=p.read_text()
needle='              baseUrl: basePathOverride ?? basePath,'
assert text.count(needle)==1 and 'followRedirects:' not in text
# Integrations put their own token first by rewriting dio.options.headers['User-Agent'].
p.write_text(text.replace(needle,needle+'\n              followRedirects: false,'
  f"\n              headers: {{'User-Agent': 'mailchannels-dart/{version}'}},"))
print('Disabled redirects and set User-Agent for the default Dart client; custom Dio remains caller-owned')

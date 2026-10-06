"""Disable automatic redirects on the default client to avoid forwarding API keys."""
from pathlib import Path
import sys
p=Path(sys.argv[1])/'lib/src/api.dart';text=p.read_text()
needle='              baseUrl: basePathOverride ?? basePath,'
assert text.count(needle)==1 and 'followRedirects:' not in text
p.write_text(text.replace(needle,needle+'\n              followRedirects: false,'))
print('Disabled redirects for the default Dart client; custom Dio remains caller-owned')

"""Redact routine errors at generated API boundaries without losing explicit data."""
import re,shutil,sys
from pathlib import Path
sdk=Path(sys.argv[1]);requests=0;errors=0
for p in (sdk/'lib/src/api').glob('*.dart'):
    text=p.read_text();errors+=text.count('throw DioException(')
    text=text.replace('throw DioException(', 'throw MailChannelsException(')
    pattern=r'await _dio.request<Object>\((.*?)\n    \);'
    text,n=re.subn(pattern,r'await redactDioFuture(_dio.request<Object>(\1\n    ));',text,flags=re.S)
    requests+=n
    text="import 'package:mailchannels_email_api/src/mailchannels_exception.dart';\n"+text
    p.write_text(text)
assert requests==42 and errors==42, f'Review API shape: {requests} requests/{errors} errors'
shutil.copy2(Path(__file__).parent/'dart-custom/mailchannels_exception.dart',sdk/'lib/src/mailchannels_exception.dart')
p=sdk/'lib/mailchannels_email_api.dart';p.write_text(p.read_text()+"\nexport 'package:mailchannels_email_api/src/mailchannels_exception.dart' show MailChannelsException;\n")
print(f'Redacted {requests} request boundaries and {errors} generated errors')

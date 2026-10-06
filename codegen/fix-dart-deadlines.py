"""Add configurable total Dio deadlines to all generated operation boundaries."""
from pathlib import Path
import re, shutil, sys
sdk=Path(sys.argv[1]);count=0
for p in (sdk/'lib/src/api').glob('*.dart'):
    text=p.read_text()
    n=text.count('    CancelToken? cancelToken,')
    text=text.replace('    CancelToken? cancelToken,','    CancelToken? cancelToken,\n    Duration requestTimeout = const Duration(seconds: 30),')
    pattern=r'await redactDioFuture\(_dio.request<Object>\((.*?)\n    \)\);'
    def replace(match):
        body=match.group(1)
        assert body.count('cancelToken: cancelToken,')==1
        body=body.replace('cancelToken: cancelToken,','cancelToken: effectiveCancelToken,')
        return ('await redactDioFuture(withMailChannelsDeadline(\n'
                '      (effectiveCancelToken) => _dio.request<Object>('+body+
                '\n      ), cancelToken, requestTimeout));')
    text,m=re.subn(pattern,replace,text,flags=re.S)
    assert m==n,(p,m,n)
    count+=m
    p.write_text("import 'package:mailchannels_email_api/src/mailchannels_deadline.dart';\n"+text)
assert count==42,count
shutil.copy2(Path(__file__).parent/'dart-custom/mailchannels_deadline.dart',sdk/'lib/src/mailchannels_deadline.dart')
print(f'Added configurable 30-second request deadline to {count} Dart operations')

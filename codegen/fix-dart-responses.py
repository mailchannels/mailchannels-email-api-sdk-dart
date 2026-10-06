"""Correct three pinned Dart operations with status-specific success models."""
from pathlib import Path
import re,shutil,sys
sdk=Path(sys.argv[1]);base=Path(__file__).parent
corrections=[('send_api','sendEmail','Message','SendEmailResult','send_email_result'),('custom_tracking_api','createCustomTrackingDomain','CustomTrackingDomain','CreateTrackingResult','create_tracking_result'),('custom_tracking_api','updateCustomTrackingDomain','CustomTrackingDomain','UpdateTrackingResult','update_tracking_result')]
for api,method,old,new,filename in corrections:
    p=sdk/f'lib/src/api/{api}.dart';text=p.read_text()
    start=text.index(f'  Future<Response<{old}>> {method}(')
    next_method=text.find('  Future<Response<',start+10)
    end=next_method if next_method!=-1 else len(text)
    section=text[start:end]
    original=f'''_responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType({old}),
      ) as {old};'''
    assert section.count(original)==1, f'Review Dart decoding: {method}'
    section=section.replace(original,f"_responseData = rawResponse == null || rawResponse == '' ? null : {new}.decode(_response.statusCode, rawResponse, _serializers);")
    section=re.sub(r'\b'+old+r'\b',new,section)
    text=text[:start]+section+text[end:]
    text=f"import 'package:mailchannels_email_api/src/model/{filename}.dart';\n"+text
    p.write_text(text)
    shutil.copy2(base/f'dart-custom/{filename}.dart',sdk/f'lib/src/model/{filename}.dart')
    p=sdk/'lib/mailchannels_email_api.dart';text=p.read_text();assert filename+'.dart' not in text
    p.write_text(text+f"\nexport 'package:mailchannels_email_api/src/model/{filename}.dart';\n")
print('Corrected three Dart status-aware response mappings')

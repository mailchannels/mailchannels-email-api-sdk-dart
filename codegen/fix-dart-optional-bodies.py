"""Do not label an absent optional request body as JSON."""
import sys
from pathlib import Path
sdk=Path(sys.argv[1])/'lib/src/api'
for file,method,param in [('sub_accounts_api.dart','createSubaccount','subAccountData'),('webhooks_api.dart','validateWebhook','webhookValidationRequestBody')]:
    p=sdk/file;text=p.read_text();start=text.index(' '+method+'({')
    end=text.index('    dynamic _bodyData;',start)
    part=text[start:end];old="contentType: 'application/json',"
    assert part.count(old)==1
    part=part.replace(old,f"contentType: {param} == null ? null : 'application/json',")
    p.write_text(text[:start]+part+text[end:])
print('Omitted JSON Content-Type for two absent optional Dart bodies')

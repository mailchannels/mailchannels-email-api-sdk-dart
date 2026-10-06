"""Audit every locked hosted Dart dependency, including build/test dependencies."""
import hashlib,json,sys
from datetime import datetime,timezone
from pathlib import Path
from urllib.request import Request,urlopen
import yaml
lock=Path(sys.argv[1]);output=Path(sys.argv[2]);data=yaml.safe_load(lock.read_text())
packages=data['packages'];assert packages
queries=[];entries=[]
for name,p in sorted(packages.items()):
    assert p['source']=='hosted',f'Non-registry dependency needs separate review: {name}'
    desc=p['description'];assert desc['url']=='https://pub.dev' and desc['name']==name
    assert len(desc['sha256'])==64
    queries.append({'package':{'ecosystem':'Pub','name':name},'version':p['version']})
    entries.append({'name':name,'version':p['version'],'dependency':p['dependency'],'archive_sha256':desc['sha256']})
request=Request('https://api.osv.dev/v1/querybatch',data=json.dumps({'queries':queries}).encode(),headers={'Content-Type':'application/json'},method='POST')
with urlopen(request,timeout=60) as response: result=json.load(response)
assert 'error' not in result and len(result['results'])==len(queries),'Incomplete OSV response'
for entry,item in zip(entries,result['results']):
    assert 'error' not in item and not item.get('next_page_token'),'OSV error/pagination requires follow-up'
    entry['advisories']=item.get('vulns',[])
ids=sorted({v['id'] for entry in entries for v in entry['advisories']})
report={'checked_at':datetime.now(timezone.utc).isoformat(),'source':'https://api.osv.dev/v1/querybatch','scope':'Every pub.dev package in evaluation lock, including direct/transitive build/test dependencies; excludes Dart SDK, generator, OS and host Python tools. Version advisory lookup, not source or license audit.','lock_sha256':hashlib.sha256(lock.read_bytes()).hexdigest(),'dependencies':entries,'advisory_ids':ids}
output.write_text(json.dumps(report,indent=2)+'\n')
print(f'Queried {len(entries)} locked Pub packages: {len(ids)} advisory IDs')
if ids: print('\n'.join(ids));sys.exit(1)

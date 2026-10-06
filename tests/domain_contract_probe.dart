import 'package:built_value/serializer.dart';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'package:mailchannels_email_api/src/serializers.dart';
import 'contract_fixture.dart';
import 'response_variants_probe.dart' show input,require;
const key='fixture-key';
const dkim='{"domain":"example.invalid","selector":"fixture","public_key":"fixture-public-key","status":"active","algorithm":"rsa","created_at":null,"key_length":2048,"dkim_dns_records":[{"name":"fixture._domainkey.example.invalid","type":"TXT","value":"fixture-dns"}]}';
const domain='{"name":"fixture","hostname":"click.example.invalid","scope":"click","status":"active","created_at":"2026-10-01T00:00:00Z"}';
const dns='{"instructions":"fixture DNS required","token":"fixture-token","txt_record_name":"_mailchannels-verify.click.example.invalid","txt_record_value":"fixture-token"}';
Future<void> main() async {
  final body={'domain':'example.invalid','envelope_from_domain':'bounce.example.invalid','sender_id':'fixture','dkim_settings':[{'dkim_domain':'example.invalid','dkim_selector':'fixture'}]};
  await contract('POST','/check-domain',200,'{"check_results":{"dkim":[{"verdict":"failed","reason":"fixture mismatch"}]},"references":["https://example.invalid/help"]}',(c) async {
    final r=(await c.getDKIMApi().checkDomain(xApiKey:key,checkDomainBody:input<CheckDomainBody>(body))).data!;
    final encoded=standardSerializers.serialize(r,specifiedType:const FullType(CheckDomainResult)) as Map;
    require(((encoded['check_results'] as Map)['dkim'] as List).single['verdict']=='failed' && r.references?.single=='https://example.invalid/help','domain verdict');
  },body:body);
  await contract('POST','/domains/example.invalid/dkim-keys',201,dkim,(c) async {
    final r=(await c.getDKIMApi().createDkimKey(domain:'example.invalid',xApiKey:key,dKIMKeyPairCreateRequest:input<DKIMKeyPairCreateRequest>({'selector':'fixture','algorithm':'rsa','key_length':2048}))).data!;
    require(r.selector=='fixture' && r.createdAt==null && r.dkimDnsRecords?.single?.type=='TXT','DKIM DNS data');
  },body:{'selector':'fixture','algorithm':'rsa','key_length':2048});
  await contract('GET','/domains/example.invalid/dkim-keys',200,'{"keys":[]}',(c) async {
    require((await c.getDKIMApi().listDkimKeys(domain:'example.invalid',xApiKey:key,selector:'fixture',status:'active',offset:10,limit:5,includeDnsRecord:true)).data!.keys.isEmpty,'DKIM empty list');
  },query:{'selector':'fixture','status':'active','offset':'10','limit':'5','include_dns_record':'true'});
  await contract('POST','/domains/example.invalid/dkim-keys/old/rotate',201,'{"new_key":{"domain":"example.invalid","selector":"new","public_key":"new-public","status":"active","algorithm":"rsa"},"rotated_key":{"domain":"example.invalid","selector":"old","public_key":"old-public","status":"rotated","algorithm":"rsa","retiresAt":null,"gracePeriodExpiresAt":null}}',(c) async {
    final r=(await c.getDKIMApi().rotateDkimKey(domain:'example.invalid',selector:'old',xApiKey:key,dKIMKeyRotateRequest:input<DKIMKeyRotateRequest>({'new_key':{'selector':'new'}}))).data!;
    require(r.newKey.selector=='new' && r.rotatedKey.selector=='old','rotation selectors');
    require(standardSerializers.serialize(r.rotatedKey.status,specifiedType:const FullType(DKIMKeyInfoStatusEnum))=='rotated','rotation status');
  },body:{'new_key':{'selector':'new'}});
  await contract('PATCH','/domains/example.invalid/dkim-keys/fixture',204,'',(c) async {
    require((await c.getDKIMApi().updateDkimKey(domain:'example.invalid',selector:'fixture',xApiKey:key,dKIMKeyPairUpdateRequest:input<DKIMKeyPairUpdateRequest>({'status':'revoked'}))).statusCode==204,'DKIM revoke');
  },body:{'status':'revoked'});
  await contract('GET','/custom-tracking-domains',200,'{"custom_tracking_domains":[],"total":0}',(c) async {
    final r=(await c.getCustomTrackingApi().listCustomTrackingDomains(xApiKey:key,name:'fixture',status:'active',scope:'click',limit:5,offset:10)).data!;
    require(r.total==0 && r.customTrackingDomains.isEmpty,'tracking empty list');
  },query:{'name':'fixture','status':'active','scope':'click','limit':'5','offset':'10'});
  await contract('DELETE','/custom-tracking-domains/click.example.invalid/click',204,'',(c) async {
    require((await c.getCustomTrackingApi().deleteCustomTrackingDomain(hostname:'click.example.invalid',scope:'click',xApiKey:key)).statusCode==204,'tracking delete');
  });
  for(final status in [201,202]) {
    final create={'name':'fixture','hostname':'click.example.invalid','scope':'click'};
    await contract('POST','/custom-tracking-domains',status,status==201?domain:dns,(c) async {
      final r=(await c.getCustomTrackingApi().createCustomTrackingDomain(xApiKey:key,postCustomTrackingDomainRequest:input<PostCustomTrackingDomainRequest>(create))).data!;
      require(status==201?r.created?.hostname=='click.example.invalid':r.accepted?.token=='fixture-token','tracking create variant');
    },body:create);
  }
  for(final status in [200,202]) {
    await contract('PATCH','/custom-tracking-domains/click.example.invalid/click',status,status==200?domain:dns,(c) async {
      final r=(await c.getCustomTrackingApi().updateCustomTrackingDomain(hostname:'click.example.invalid',scope:'click',xApiKey:key,patchCustomTrackingDomainRequest:input<PatchCustomTrackingDomainRequest>({'status':'active'}))).data!;
      require(status==200?r.updated?.hostname=='click.example.invalid':r.accepted?.token=='fixture-token','tracking update variant');
    },body:{'status':'active'});
  }
  print('Dart domain/DKIM/tracking checks passed: $checks');
}

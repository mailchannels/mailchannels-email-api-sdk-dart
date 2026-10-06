import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'contract_fixture.dart';
import 'response_variants_probe.dart' show input,require;
const key='fixture-key';
Future<void> main() async {
  await contract('GET','/sub-account/team%2Fa%20b%2B%3F%23/limit',200,'{"sends":-1}',(c) async {
    require((await c.getSubAccountsApi().getSubaccountLimit(handle:'team/a b+?#',xApiKey:key)).data?.sends==-1,'inherited limit');
  });
  await contract('PUT','/sub-account/fixture/limit',200,'{"limit":{"sends":0}}',(c) async {
    require((await c.getSubAccountsApi().setSubaccountLimit(handle:'fixture',xApiKey:key,limitInput:input<LimitInput>({'sends':0}))).data?.limit?.sends==0,'zero limit');
  },body:{'sends':0});
  await contract('DELETE','/sub-account/fixture/limit',204,'',(c) async {
    require((await c.getSubAccountsApi().deleteSubaccountLimit(handle:'fixture',xApiKey:key)).statusCode==204,'delete limit');
  });
  await contract('POST','/sub-account/fixture/api-key',201,'{"id":41,"key":"fixture-created-secret"}',(c) async {
    final r=(await c.getSubAccountsApi().createSubaccountApiKey(handle:'fixture',xApiKey:key)).data!;
    require(r.id==41 && r.key=='fixture-created-secret','created API key');
  });
  await contract('GET','/sub-account/fixture/api-key?limit=10&offset=20',200,'[{"id":41}]',(c) async {
    final r=(await c.getSubAccountsApi().listSubaccountApiKeys(handle:'fixture',xApiKey:key,limit:10,offset:20)).data!;
    require(r.single.id==41 && r.single.key==null,'API key list');
  });
  await contract('DELETE','/sub-account/fixture/api-key/41',204,'',(c) async {
    require((await c.getSubAccountsApi().deleteSubaccountApiKey(handle:'fixture',id:41,xApiKey:key)).statusCode==204,'delete API key');
  });
  await contract('POST','/sub-account',201,'{"handle":"fixture","enabled":true,"company_name":"Fixture Company"}',(c) async {
    final r=(await c.getSubAccountsApi().createSubaccount(xApiKey:key,subAccountData:input<SubAccountData>({'company_name':'Fixture Company','handle':'fixture'}))).data!;
    require(r.handle=='fixture' && r.enabled && r.companyName=='Fixture Company','created account');
  },body:{'company_name':'Fixture Company','handle':'fixture'});
  await contract('GET','/sub-account?limit=5&offset=10',200,'[{"handle":"fixture","enabled":false}]',(c) async {
    final r=(await c.getSubAccountsApi().listSubaccounts(xApiKey:key,limit:5,offset:10)).data!;
    require(r.single.handle=='fixture' && !r.single.enabled,'disabled account list');
  });
  await contract('POST','/sub-account/fixture/activate',204,'',(c) async {
    require((await c.getSubAccountsApi().activateSubaccount(handle:'fixture',xApiKey:key)).statusCode==204,'activate');
  });
  await contract('POST','/sub-account/fixture/suspend',204,'',(c) async {
    require((await c.getSubAccountsApi().suspendSubaccount(handle:'fixture',xApiKey:key)).statusCode==204,'suspend');
  });
  await contract('DELETE','/sub-account/fixture',204,'',(c) async {
    require((await c.getSubAccountsApi().deleteSubaccount(handle:'fixture',xApiKey:key)).statusCode==204,'delete');
  });
  await contract('GET','/sub-account/fixture/usage',200,'{"monthly_limit":100,"total_usage":4294967296,"period_start_date":"2026-10-01","period_end_date":"2026-10-31"}',(c) async {
    final r=(await c.getSubAccountsApi().getSubaccountUsage(handle:'fixture',xApiKey:key)).data!;
    require(r.monthlyLimit==100 && r.totalUsage==4294967296 && r.periodStartDate.toString()=='2026-10-01' && r.periodEndDate.toString()=='2026-10-31','usage counts/dates');
  });
  await contract('POST','/sub-account/fixture/smtp-password',201,'{"id":12,"enabled":true,"smtp_password":"fixture-smtp-secret"}',(c) async {
    final r=(await c.getSubAccountsApi().createSubaccountSmtpPassword(handle:'fixture',xApiKey:key)).data!;
    require(r.id==12 && r.enabled==true && r.smtpPassword=='fixture-smtp-secret','SMTP create');
  });
  await contract('GET','/sub-account/fixture/smtp-password',200,'[{"id":12,"enabled":false}]',(c) async {
    final r=(await c.getSubAccountsApi().listSubaccountSmtpPasswords(handle:'fixture',xApiKey:key)).data!;
    require(r.single.id==12 && r.single.enabled==false && r.single.smtpPassword==null,'SMTP list');
  });
  await contract('DELETE','/sub-account/fixture/smtp-password/12',204,'',(c) async {
    require((await c.getSubAccountsApi().deleteSubaccountSmtpPassword(handle:'fixture',id:12,xApiKey:key)).statusCode==204,'SMTP delete');
  });
  await contract('POST','/sub-account',201,'{"handle":"generated","enabled":true}',(c) async {
    require((await c.getSubAccountsApi().createSubaccount(xApiKey:key)).data?.handle=='generated','optional body');
  },absentContentType:true);
  await contract('POST','/webhook/validate',200,'{"all_passed":true,"results":[]}',(c) async {
    final r=(await c.getWebhooksApi().validateWebhook(xApiKey:key)).data!;
    require(r.allPassed && r.results.isEmpty,'omitted webhook validation body');
  },absentContentType:true);
  await contract('POST','/webhook/validate',200,'{"all_passed":true,"results":[]}',(c) async {
    final r=(await c.getWebhooksApi().validateWebhook(xApiKey:key,webhookValidationRequestBody:input<WebhookValidationRequestBody>({'request_id':'fixture-request'}))).data!;
    require(r.allPassed,'explicit webhook validation body');
  },body:{'request_id':'fixture-request'});
  print('Dart subaccount/optional-body contract checks passed: $checks');
}

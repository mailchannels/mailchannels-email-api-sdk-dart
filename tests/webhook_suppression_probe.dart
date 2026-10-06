import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'package:mailchannels_email_api/src/serializers.dart';
import 'contract_fixture.dart';
import 'response_variants_probe.dart' show input,require;
const key='fixture-key';
Future<void> main() async {
  const endpoint='https://example.invalid/hook?a=1&token=fixture+value#frag';
  await contract('POST','/webhook',201,'',(c) async {
    require((await c.getWebhooksApi().createWebhook(endpoint:endpoint,xApiKey:key)).statusCode==201,'webhook enrollment');
  },query:{'endpoint':endpoint});
  await contract('GET','/webhook',200,'[{"webhook":"https://example.invalid/a"},{"webhook":"https://example.invalid/b"}]',(c) async {
    final r=(await c.getWebhooksApi().listWebhooks(xApiKey:key)).data!;
    require(r.length==2 && r[1].webhook=='https://example.invalid/b','webhook list');
  });
  await contract('DELETE','/webhook',204,'',(c) async {
    require((await c.getWebhooksApi().deleteWebhooks(xApiKey:key)).statusCode==204,'delete webhooks');
  });
  await contract('GET','/webhook/public-key',200,'{"id":"fixture+key","key":"fixture-public-key"}',(c) async {
    final r=(await c.getWebhooksApi().getWebhookSigningKey(id:'fixture+key')).data!;
    require(r.id=='fixture+key' && r.key=='fixture-public-key','signing key');
  },apiKey:false,query:{'id':'fixture+key'});
  await contract('GET','/webhook-batch',200,'{"webhook_batches":[{"batch_id":4294967296,"customer_handle":"fixture","webhook":"https://example.invalid/hook","status":"no_response","status_code":null,"created_at":"2026-10-01T00:00:00Z","event_count":2}]}',(c) async {
    final r=(await c.getWebhooksApi().listWebhookBatches(xApiKey:key,createdAfter:'2026-10-01',createdBefore:'2026-10-02',statuses:BuiltList(['no_response','5xx']),webhook:endpoint,limit:10,offset:20)).data!.webhookBatches.single;
    require(r.batchId==4294967296 && r.statusCode==null && r.eventCount==2,'batch response');
    require(standardSerializers.serialize(r.status,specifiedType:const FullType(WebhookBatchStatusEnum))=='no_response','batch status enum');
  },query:{'created_after':'2026-10-01','created_before':'2026-10-02','statuses':'no_response,5xx','webhook':endpoint,'limit':'10','offset':'20'});
  await contract('POST','/webhook-batch/4294967296/resend',200,'{"batch_id":4294967296,"customer_handle":"fixture","webhook":"https://example.invalid/hook","created_at":"2026-10-01T00:00:00Z","event_count":2,"status_code":null,"duration_in_ms":null}',(c) async {
    final r=(await c.getWebhooksApi().resendWebhookBatch(batchId:4294967296,xApiKey:key)).data!;
    require(r.batchId==4294967296 && r.statusCode==null && r.durationInMs==null,'resend receipt');
  });
  final body={'add_to_sub_accounts':true,'suppression_entries':[{'recipient':'one+tag@example.invalid','suppression_types':['transactional','non-transactional']},{'recipient':'two@example.invalid','notes':'fixture note'}]};
  await contract('POST','/suppression-list',201,'',(c) async {
    require((await c.getSuppressionApi().createSuppressions(xApiKey:key,suppressionListInput:input<SuppressionListInput>(body))).statusCode==201,'suppression create');
  },body:body);
  await contract('GET','/suppression-list',200,'{"suppression_list":[{"recipient":"one+tag@example.invalid","sender":null,"notes":null,"source":"spam_complaint","created_at":"2026-10-01T00:00:00Z","suppression_types":["non-transactional"]}]}',(c) async {
    final r=(await c.getSuppressionApi().listSuppressions(xApiKey:key,recipient:'one+tag@example.invalid',source_:'spam_complaint',createdBefore:'2026-10-02',createdAfter:'2026-10-01',limit:5,offset:10)).data!.suppressionList.single;
    require(r.recipient=='one+tag@example.invalid' && r.sender==null && r.notes==null,'suppression nullable fields');
    final encoded=standardSerializers.serialize(r,specifiedType:const FullType(SuppressionEntryResponse)) as Map;
    require(encoded['source']=='spam_complaint' && (encoded['suppression_types'] as List).single=='non-transactional','suppression enums');
  },query:{'recipient':'one+tag@example.invalid','source':'spam_complaint','created_before':'2026-10-02','created_after':'2026-10-01','limit':'5','offset':'10'});
  await contract('DELETE','/suppression-list/recipients/one%2Btag%40example.invalid?source=api',204,'',(c) async {
    require((await c.getSuppressionApi().deleteSuppression(recipient:'one+tag@example.invalid',xApiKey:key)).statusCode==204,'default source');
  });
  await contract('DELETE','/suppression-list/recipients/one%2Btag%40example.invalid?source=all',204,'',(c) async {
    require((await c.getSuppressionApi().deleteSuppression(recipient:'one+tag@example.invalid',xApiKey:key,source_:'all')).statusCode==204,'all source');
  });
  print('Dart webhook/suppression checks passed: $checks');
}

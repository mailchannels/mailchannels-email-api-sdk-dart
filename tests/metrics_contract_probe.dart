import 'dart:convert';
import 'package:built_value/serializer.dart';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'package:mailchannels_email_api/src/serializers.dart';
import 'contract_fixture.dart';
import 'response_variants_probe.dart' show input,require;
const key='fixture-key';
const filters={'start_time':'2026-10-01T00:00:00Z','end_time':'2026-10-02T00:00:00Z','campaign_id':'fixture+campaign','interval':'day'};
Future<void> main() async {
  await contract('GET','/metrics/engagement',200,r'{"open":3,"open_tracking_delivered":4,"click":2,"click_tracking_delivered":4,"unique_open":2,"unique_click":1,"buckets":{"open":[{"period_start":"2026-10-01T00:00:00.000Z","count":3}],"open_tracking_delivered":[],"click":[],"click_tracking_delivered":[]}}',(c) async {
    final r=(await c.getMetricsApi().getEngagementMetrics(xApiKey:key,startTime:filters['start_time'],endTime:filters['end_time'],campaignId:filters['campaign_id'],interval:'day')).data!;
    final encoded=standardSerializers.serialize(r,specifiedType:const FullType(MetricsEngagement));
    require(jsonEncode(canonical(encoded))==jsonEncode(canonical(jsonDecode(r'{"open":3,"open_tracking_delivered":4,"click":2,"click_tracking_delivered":4,"unique_open":2,"unique_click":1,"buckets":{"open":[{"period_start":"2026-10-01T00:00:00.000Z","count":3}],"open_tracking_delivered":[],"click":[],"click_tracking_delivered":[]}}'))),'metrics counts/buckets');
  },query:filters);
  await contract('GET','/metrics/performance',200,r'{"delivered":10,"bounced":2,"complained":1,"processed":12,"buckets":{"delivered":[],"bounced":[{"period_start":"2026-10-01T00:00:00.000Z","count":2}],"complained":[],"processed":[]}}',(c) async {
    final r=(await c.getMetricsApi().getPerformanceMetrics(xApiKey:key,startTime:filters['start_time'],endTime:filters['end_time'],campaignId:filters['campaign_id'],interval:'day')).data!;
    final encoded=standardSerializers.serialize(r,specifiedType:const FullType(MetricsPerformance));
    require(jsonEncode(canonical(encoded))==jsonEncode(canonical(jsonDecode(r'{"delivered":10,"bounced":2,"complained":1,"processed":12,"buckets":{"delivered":[],"bounced":[{"period_start":"2026-10-01T00:00:00.000Z","count":2}],"complained":[],"processed":[]}}'))),'metrics counts/buckets');
  },query:filters);
  await contract('GET','/metrics/recipient-behaviour',200,r'{"unsubscribed":2,"unsubscribe_delivered":10,"buckets":{"unsubscribed":[{"period_start":"2026-10-01T00:00:00.000Z","count":2}],"unsubscribe_delivered":[]}}',(c) async {
    final r=(await c.getMetricsApi().getRecipientBehaviourMetrics(xApiKey:key,startTime:filters['start_time'],endTime:filters['end_time'],campaignId:filters['campaign_id'],interval:'day')).data!;
    final encoded=standardSerializers.serialize(r,specifiedType:const FullType(MetricsRecipientBehaviour));
    require(jsonEncode(canonical(encoded))==jsonEncode(canonical(jsonDecode(r'{"unsubscribed":2,"unsubscribe_delivered":10,"buckets":{"unsubscribed":[{"period_start":"2026-10-01T00:00:00.000Z","count":2}],"unsubscribe_delivered":[]}}'))),'metrics counts/buckets');
  },query:filters);
  await contract('GET','/metrics/volume',200,r'{"processed":12,"delivered":10,"dropped":2,"buckets":{"processed":[],"delivered":[],"dropped":[{"period_start":"2026-10-01T00:00:00.000Z","count":2}]}}',(c) async {
    final r=(await c.getMetricsApi().getVolumeMetrics(xApiKey:key,startTime:filters['start_time'],endTime:filters['end_time'],campaignId:filters['campaign_id'],interval:'day')).data!;
    final encoded=standardSerializers.serialize(r,specifiedType:const FullType(MetricsVolume));
    require(jsonEncode(canonical(encoded))==jsonEncode(canonical(jsonDecode(r'{"processed":12,"delivered":10,"dropped":2,"buckets":{"processed":[],"delivered":[],"dropped":[{"period_start":"2026-10-01T00:00:00.000Z","count":2}]}}'))),'metrics counts/buckets');
  },query:filters);
  await contract('GET','/metrics/senders/campaigns',200,'{"limit":5,"offset":10,"total":20,"senders":[{"name":"fixture-campaign","processed":10,"delivered":8,"bounced":1,"dropped":1}]}',(c) async {
    final r=(await c.getMetricsApi().getSenderMetrics(senderType:'campaigns',xApiKey:key,limit:5,offset:10,sortOrder:'desc')).data!;
    require(r.total==20 && r.limit==5 && r.offset==10 && r.senders.single.name=='fixture-campaign' && r.senders.single.delivered==8,'sender metrics');
  },query:{'limit':'5','offset':'10','sort_order':'desc'});
  await contract('GET','/usage',200,'{"monthly_limit":0,"total_usage":4294967296,"period_start_date":"2026-10-01","period_end_date":"2026-10-31"}',(c) async {
    final r=(await c.getUsageApi().getUsage(xApiKey:key)).data!;
    require(r.monthlyLimit==0 && r.totalUsage==4294967296 && r.periodStartDate.toString()=='2026-10-01' && r.periodEndDate.toString()=='2026-10-31','parent usage');
  });
  final message={'from':{'email':'sender@example.invalid'},'personalizations':[{'to':[{'email':'recipient@example.invalid'}]}],'subject':'fixture','content':[{'type':'text/plain','value':'fixture'}]};
  await contract('POST','/send-async',202,'{"request_id":"fixture-async","queued_at":"2026-10-06T00:00:00Z"}',(c) async {
    final r=(await c.getSendApi().queueEmail(xApiKey:key,mailSendBody:input<MailSendBody>(message))).data!;
    require(r.requestId=='fixture-async' && r.queuedAt==DateTime.utc(2026,10,6),'async receipt');
  },body:{...message,'transactional':true});
  await contract('POST','/send?dry-run=true',200,'{"data":["fixture rendered"]}',(c) async {
    final r=(await c.getSendApi().sendEmail(xApiKey:key,mailSendBody:input<MailSendBody>(message),dryRun:true)).data!;
    require(r.dryRun?.data?.single=='fixture rendered' && r.accepted==null,'dry-run request/response');
  },body:{...message,'transactional':true});
  await contract('POST','/send?dry-run=false',202,'{"request_id":"fixture-send","results":[{"index":0,"status":"sent","message_id":"fixture-message"}]}',(c) async {
    final r=(await c.getSendApi().sendEmail(xApiKey:key,mailSendBody:input<MailSendBody>(message),dryRun:false)).data!;
    require(r.accepted?.requestId=='fixture-send' && r.accepted?.results?.single.messageId=='fixture-message' && r.dryRun==null,'accepted request/response');
  },body:{...message,'transactional':true});
  print('Dart metrics/usage/send checks passed: $checks');
}

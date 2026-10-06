import 'dart:io';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'package:mailchannels_email_api/src/serializers.dart';

int passed = 0;
void require(bool value, String message) { if (!value) throw StateError(message); }
T input<T>(Object value) => standardSerializers.deserialize(value, specifiedType: FullType(T)) as T;
MailSendBody body() => input<MailSendBody>({
  'from': {'email':'sender@example.invalid'},
  'personalizations':[{'to':[{'email':'recipient@example.invalid'}]}],
  'subject':'fixture','content':[{'type':'text/plain','value':'fixture'}]
});
Future<void> fixture(int status, String json, Future<void> Function(MailchannelsEmailApi) check) async {
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
  server.listen((request) async {
    await request.drain<void>();
    request.response.statusCode=status;
    request.response.headers.contentType=ContentType.json;
    request.response.write(json);
    await request.response.close();
  });
  final client=MailchannelsEmailApi(basePathOverride:'http://127.0.0.1:${server.port}');
  try { await check(client); passed++; print('PASS response variant HTTP $status'); }
  finally { client.dio.close(force:true); await server.close(force:true); }
}
Future<void> main() async {
  await fixture(200,'{"data":["rendu été"]}',(c) async {
    final r=(await c.getSendApi().sendEmail(xApiKey:'fixture-key',mailSendBody:body(),dryRun:true)).data!;
    require(r.dryRun?.data?.single=='rendu été' && r.accepted==null,'dry-run UTF8');
  });
  await fixture(202,'',(c) async {
    final r=await c.getSendApi().sendEmail(xApiKey:'fixture-key',mailSendBody:body());
    require(r.statusCode==202 && r.data==null,'empty accepted body');
  });
  await fixture(202,'{invalid',(c) async {
    bool failed=false;
    try { await c.getSendApi().sendEmail(xApiKey:'fixture-key',mailSendBody:body()); } on DioException { failed=true; }
    require(failed,'malformed JSON must fail');
  });
  await fixture(203,'{"future":"preserved"}',(c) async {
    final r=(await c.getSendApi().sendEmail(xApiKey:'fixture-key',mailSendBody:body())).data!;
    require((r.unknown as Map)['future']=='preserved' && r.accepted==null && r.dryRun==null,'unknown success retained');
  });
  const domain='{"name":"fixture","hostname":"click.example.invalid","scope":"click","status":"active","created_at":"2026-10-01T00:00:00Z"}';
  const dns='{"instructions":"fixture DNS required","token":"fixture-token"}';
  for (final status in [201,202]) {
    await fixture(status,status==201?domain:dns,(c) async {
      final r=(await c.getCustomTrackingApi().createCustomTrackingDomain(xApiKey:'fixture-key',
        postCustomTrackingDomainRequest:input<PostCustomTrackingDomainRequest>({'name':'fixture','hostname':'click.example.invalid','scope':'click'}))).data!;
      require(status==201 ? r.created?.hostname=='click.example.invalid' && r.accepted==null : r.accepted?.token=='fixture-token' && r.created==null,'tracking create variant');
    });
  }
  for (final status in [200,202]) {
    await fixture(status,status==200?domain:dns,(c) async {
      final r=(await c.getCustomTrackingApi().updateCustomTrackingDomain(hostname:'click.example.invalid',scope:'click',xApiKey:'fixture-key',
        patchCustomTrackingDomainRequest:input<PatchCustomTrackingDomainRequest>({'status':'active'}))).data!;
      require(status==200 ? r.updated?.hostname=='click.example.invalid' && r.accepted==null : r.accepted?.token=='fixture-token' && r.updated==null,'tracking update variant');
    });
  }
  print('Dart response variant checks passed: $passed');
}

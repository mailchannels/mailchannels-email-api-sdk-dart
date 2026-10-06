import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'response_variants_probe.dart' as fixtures;

Future<void> redirect(int status, bool send) async {
  final target=await HttpServer.bind(InternetAddress.loopbackIPv4,0);
  int forwarded=0; bool keyForwarded=false;
  target.listen((request) async {
    forwarded++; keyForwarded=request.headers.value('X-Api-Key')=='fixture-key';
    await request.drain<void>();request.response.headers.contentType=ContentType.json;
    request.response.write('{"monthly_limit":0,"total_usage":1,"period_start_date":"2026-10-01","period_end_date":"2026-10-31"}');
    await request.response.close();
  });
  final origin=await HttpServer.bind(InternetAddress.loopbackIPv4,0);
  int requests=0;
  origin.listen((request) async {
    requests++;await request.drain<void>();request.response.statusCode=status;
    request.response.headers.set('Location','http://127.0.0.1:${target.port}/redirected');
    await request.response.close();
  });
  final client=MailchannelsEmailApi(basePathOverride:'http://127.0.0.1:${origin.port}');
  try {
    DioException? failure;
    try {
      if(send) {await client.getSendApi().sendEmail(xApiKey:'fixture-key',mailSendBody:fixtures.body());}
      else {await client.getUsageApi().getUsage(xApiKey:'fixture-key');}
    } on DioException catch(error) {failure=error;}
    fixtures.require(requests==1 && forwarded==0 && !keyForwarded,
      'redirect followed: status=$status requests=$requests forwarded=$forwarded keyForwarded=$keyForwarded');
    fixtures.require(failure?.response?.statusCode==status,'redirect status lost');
    print('PASS redirect $status send=$send not followed');
  } finally {client.dio.close(force:true);await origin.close(force:true);await target.close(force:true);}
}
Future<void> main() async {
  await redirect(302,false);await redirect(307,false);await redirect(303,true);
  final server=await HttpServer.bind(InternetAddress.loopbackIPv4,0);int requests=0;
  server.listen((request) async {requests++;await request.drain<void>();request.response.statusCode=503;await request.response.close();});
  final client=MailchannelsEmailApi(basePathOverride:'http://127.0.0.1:${server.port}');
  try {
    DioException? failure;
    try {await client.getSendApi().sendEmail(xApiKey:'fixture-key',mailSendBody:fixtures.body());}
    on DioException catch(error) {failure=error;}
    fixtures.require(requests==1 && failure?.response?.statusCode==503,'503 replay/status');
    print('PASS send503 not retried');
  } finally {client.dio.close(force:true);await server.close(force:true);}
  print('Dart redirect/retry checks passed: 4');
}

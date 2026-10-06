import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'response_variants_probe.dart' as fixtures;

// Raw HTTP allows the fixture to observe peer closure independently of Dio's
// returned Future. Every connection is local and carries fixture credentials.
Future<void> cancelled({required bool headers, bool deadline=false}) async {
  final server=await ServerSocket.bind(InternetAddress.loopbackIPv4,0);
  final received=Completer<void>();final closed=Completer<void>();
  Socket? peer;
  server.listen((socket) {
    peer=socket;
    var sent=false;
    socket.listen((data) {
      if(sent) return;sent=true;
      if(headers) socket.write('HTTP/1.1 200 OK\r\nContent-Type: application/json\r\nContent-Length: 10000\r\n\r\n{"data":[');
      received.complete();
    },onDone:() {if(!closed.isCompleted) closed.complete();},onError:(Object e) {if(!closed.isCompleted) closed.complete();});
  });
  final client=MailchannelsEmailApi(basePathOverride:'http://127.0.0.1:${server.port}');
  final token=CancelToken();
  try {
    final pending=client.getUsageApi().getUsage(xApiKey:'fixture-key',cancelToken:token,requestTimeout:Duration(milliseconds:deadline?300:3000))
      .then<DioException?>((_)=>null,onError:(Object e) {if(e is DioException) return e;throw e;});
    await received.future.timeout(const Duration(seconds:3));
    // Let the response-body subscription start in the post-header case.
    await Future<void>.delayed(const Duration(milliseconds:100));
    if(!deadline) token.cancel('fixture cancellation');
    final error=await pending.timeout(const Duration(seconds:2));
    fixtures.require(error?.type==(deadline?DioExceptionType.receiveTimeout:DioExceptionType.cancel),'cancellation type lost');
    // Check before force-closing the client: cleanup must be caused by cancel.
    await closed.future.timeout(const Duration(seconds:2));
    if(deadline) fixtures.require(!token.isCancelled,'deadline cancelled caller token');
    print('PASS ${deadline?'deadline':'caller cancellation'} headers=$headers returns expected error and closes peer');
  } finally {client.dio.close(force:true);peer?.destroy();await server.close();}
}

Future<void> trickle({bool deadline=false}) async {
  final server=await ServerSocket.bind(InternetAddress.loopbackIPv4,0);
  Socket? peer;Timer? writer;final closed=Completer<void>();
  final payload='{"monthly_limit":0,"total_usage":1,"period_start_date":"2026-10-01","period_end_date":"2026-10-31"}';
  server.listen((socket) {
    peer=socket;var sent=false;
    socket.listen((data) {
      if(sent) return;sent=true;
      socket.write('HTTP/1.1 200 OK\r\nContent-Type: application/json\r\nContent-Length: ${payload.length}\r\n\r\n');
      var offset=0;
      writer=Timer.periodic(const Duration(milliseconds:50),(timer) {
        final end=(offset+10).clamp(0,payload.length);
        socket.write(payload.substring(offset,end));offset=end;
        if(offset==payload.length) timer.cancel();
      });
    },onError:(Object error) {if(!closed.isCompleted) closed.complete();},onDone:() {if(!closed.isCompleted) closed.complete();});
  });
  final client=MailchannelsEmailApi(basePathOverride:'http://127.0.0.1:${server.port}');
  client.dio.options.receiveTimeout=const Duration(milliseconds:200);
  try {
    final watch=Stopwatch()..start();
    if(deadline) {
      DioException? error;
      final token=CancelToken();
      try {await client.getUsageApi().getUsage(xApiKey:'fixture-key',cancelToken:token,requestTimeout:const Duration(milliseconds:250));}
      on DioException catch(e) {error=e;}
      fixtures.require(error?.type==DioExceptionType.receiveTimeout,'trickle did not hit total deadline');
      fixtures.require(!token.isCancelled,'trickle deadline cancelled shared token');
      await closed.future.timeout(const Duration(seconds:2));
      print('PASS trickle deadline returns timeout and closes peer without cancelling caller token');
      return;
    }
    final result=await client.getUsageApi().getUsage(xApiKey:'fixture-key').timeout(const Duration(seconds:3));
    fixtures.require(result.data?.totalUsage==1,'trickle response lost');
    fixtures.require(watch.elapsedMilliseconds>400,'fixture did not exceed receive timeout');
    print('BASELINE receiveTimeout=200ms completed after ${watch.elapsedMilliseconds}ms: not a total response deadline');
  } finally {writer?.cancel();client.dio.close(force:true);peer?.destroy();await server.close();}
}
Future<void> beforeRequest(bool cancelled) async {
  final server=await HttpServer.bind(InternetAddress.loopbackIPv4,0);
  var requests=0;
  server.listen((request) async {requests++;await request.response.close();});
  final client=MailchannelsEmailApi(basePathOverride:'http://127.0.0.1:${server.port}');
  final token=CancelToken();if(cancelled) token.cancel('already cancelled');
  try {
    Object? failure;
    try {await client.getUsageApi().getUsage(xApiKey:'fixture-key',cancelToken:token,
      requestTimeout:cancelled?const Duration(seconds:1):Duration.zero);}
    catch(error) {failure=error;}
    fixtures.require(cancelled?(failure is DioException && failure.type==DioExceptionType.cancel):failure is ArgumentError,'pre-request failure type');
    fixtures.require(requests==0,'pre-request rejection contacted server');
    print('PASS ${cancelled?'pre-cancelled token':'invalid deadline'} rejected before HTTP');
  } finally {client.dio.close(force:true);await server.close(force:true);}
}
Future<void> main() async {
  await cancelled(headers:false);await cancelled(headers:true);
  await cancelled(headers:false,deadline:true);await cancelled(headers:true,deadline:true);
  await trickle();await trickle(deadline:true);
  await beforeRequest(true);await beforeRequest(false);
  print('Dart deadline/cancellation checks passed: 8 (includes receiveTimeout-gap fixture)');
}

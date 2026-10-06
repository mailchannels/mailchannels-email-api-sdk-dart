import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'response_variants_probe.dart' as fixtures;

Future<void> check(String directory, String certificate, bool trusted, bool accepted) async {
  final context=SecurityContext()
    ..useCertificateChain('$directory/$certificate.pem')
    ..usePrivateKey('$directory/$certificate-key.pem');
  final server=await HttpServer.bindSecure(InternetAddress.loopbackIPv4,0,context);
  int requests=0;
  server.listen((request) async {
    requests++;await request.drain<void>();
    request.response.headers.contentType=ContentType.json;
    request.response.write('{"data":["TLS fixture"]}');
    await request.response.close();
  },onError:(Object error) { if(error is! HandshakeException) throw error; });
  final client=MailchannelsEmailApi(basePathOverride:'https://fixture.test:${server.port}');
  if(trusted) {
    final trust=SecurityContext(withTrustedRoots:false)..setTrustedCertificates('$directory/ca.pem');
    client.dio.httpClientAdapter=IOHttpClientAdapter(createHttpClient:() => HttpClient(context:trust));
  }
  try {
    DioException? failure;
    try {
      final result=await client.getSendApi().sendEmail(xApiKey:'fixture-key',mailSendBody:fixtures.body(),dryRun:true);
      fixtures.require(result.data?.dryRun?.data?.single=='TLS fixture','TLS response lost');
    } on DioException catch(error) {failure=error;}
    if(accepted) {fixtures.require(failure==null && requests==1,'valid certificate rejected');}
    else {
      fixtures.require(failure!=null && (failure.error is HandshakeException || failure.type==DioExceptionType.badCertificate),'expected certificate failure');
      fixtures.require(requests==0,'invalid TLS reached HTTP handler');
    }
    print('PASS TLS certificate=$certificate trusted=$trusted accepted=$accepted');
  } finally {client.dio.close(force:true);await server.close(force:true);}
}
Future<void> main(List<String> args) async {
  await check(args.single,'valid',true,true);
  await check(args.single,'wrong-host',true,false);
  await check(args.single,'expired',true,false);
  await check(args.single,'valid',false,false);
  print('Dart TLS checks passed: 4');
}

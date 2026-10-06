import 'package:dio/dio.dart';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'response_variants_probe.dart' as fixtures;

Future<void> main() async {
  await fixtures.fixture(202,'{"request_id":{"nested":"fixture-private-response"}}',(client) async {
    DioException? failure;
    try { await client.getSendApi().sendEmail(xApiKey:'fixture-secret-key',mailSendBody:fixtures.body()); }
    on DioException catch (error) { failure=error; }
    fixtures.require(failure!=null,'invalid schema accepted');
    fixtures.require(!failure.toString().contains('fixture-private-response'),'nested serializer data exposed');
    fixtures.require(failure!.response!.data.toString().contains('fixture-private-response'),'explicit response lost');
    fixtures.require(failure.requestOptions.headers['X-Api-Key']=='fixture-secret-key','explicit request lost');
  });
  await fixtures.fixture(400,'{"errors":["fixture-private-error"]}',(client) async {
    DioException? failure;
    try { await client.getSendApi().sendEmail(xApiKey:'fixture-key',mailSendBody:fixtures.body()); }
    on DioException catch (error) { failure=error; }
    fixtures.require(failure?.response?.statusCode==400 && failure?.type==DioExceptionType.badResponse,'HTTP error contract');
    fixtures.require(!failure.toString().contains('fixture-private-error') && failure!.response!.data.toString().contains('fixture-private-error'),'error data preservation/redaction');
  });
  final dio=Dio();
  dio.interceptors.add(InterceptorsWrapper(onRequest:(options,handler) {
    handler.reject(DioException(requestOptions:options,message:'fixture-private-message',error:StateError('fixture-private-cause')));
  }));
  final client=MailchannelsEmailApi(dio:dio);
  try {
    DioException? failure;
    try { await client.getSendApi().sendEmail(xApiKey:'fixture-key',mailSendBody:fixtures.body()); }
    on DioException catch(error) { failure=error; }
    fixtures.require(failure!=null && !failure.toString().contains('fixture-private') && !failure!.message!.contains('fixture-private'),'transport diagnostics');
    fixtures.require(failure!.error.toString().contains('fixture-private-cause'),'explicit cause lost');
  } finally {dio.close(force:true);}
  print('Dart exception checks passed: 3');
}

import 'dart:convert';
import 'dart:io';
import 'package:built_value/serializer.dart';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'package:mailchannels_email_api/src/serializers.dart';

Future<void> main() async {
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
  server.listen((request) async {
    await request.drain<void>();
    request.response.statusCode = 202;
    request.response.headers.contentType = ContentType.json;
    request.response.write(jsonEncode({
      'request_id': 'fixture-request',
      'results': [
        {'index': 0, 'status': 'sent', 'message_id': 'fixture-message'},
        {'index': 1, 'status': 'failed', 'reason': 'fixture rejection'}
      ]
    }));
    await request.response.close();
  });
  final client = MailchannelsEmailApi(basePathOverride: 'http://127.0.0.1:${server.port}');
  try {
    final body = standardSerializers.deserialize({
      'from': {'email': 'sender@example.invalid'},
      'personalizations': [{'to': [{'email': 'recipient@example.invalid'}]}],
      'subject': 'fixture',
      'content': [{'type': 'text/plain', 'value': 'fixture'}]
    }, specifiedType: const FullType(MailSendBody)) as MailSendBody;
    final response = await client.getSendApi().sendEmail(xApiKey: 'fixture-key', mailSendBody: body);
    final result = response.data;
    if (response.statusCode != 202 || result?.accepted?.requestId != 'fixture-request' ||
        result?.accepted?.results?.length != 2 || result?.dryRun != null ||
        result?.accepted?.results?[1].reason != 'fixture rejection') {
      throw StateError('202 request_id and per-recipient results were not retained');
    }
    if (result.toString().contains('fixture-request')) throw StateError('Wrapper diagnostics leak');
    print('PASS native Dart send202 response retained');
  } finally {
    client.dio.close(force: true);
    await server.close(force: true);
  }
}

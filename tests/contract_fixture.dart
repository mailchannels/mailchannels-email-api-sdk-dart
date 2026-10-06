import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'response_variants_probe.dart' show require;

Object? canonical(Object? value) {
  if(value is Map) {
    final keys=value.keys.cast<String>().toList()..sort();
    return {for(final key in keys) key:canonical(value[key])};
  }
  if(value is List) return value.map(canonical).toList();
  return value;
}
int checks=0;
Future<void> contract(String method,String target,int status,String response,
  Future<void> Function(MailchannelsEmailApi) check,{Object? body,bool absentContentType=false, bool apiKey=true, Map<String,String>? query}) async {
  final server=await HttpServer.bind(InternetAddress.loopbackIPv4,0);
  final received=Completer<void>();var requests=0;
  Object? failure;StackTrace? failureStack;
  server.listen((request) async {
    try {
      requests++;
      require(request.method==method,'method ${request.method}, expected $method');
      if(query==null) {require(request.uri.toString()==target,'target ${request.uri}, expected $target');}
      else {
        require(request.uri.path==target,'path ${request.uri.path}, expected $target');
        require(jsonEncode(canonical(request.uri.queryParameters))==jsonEncode(canonical(query)),'query ${request.uri.queryParameters}, expected $query');
        require(request.uri.queryParametersAll.values.every((values)=>values.length==1),'duplicate query values');
      }
      require(request.headers.value('x-api-key')==(apiKey?'fixture-key':null),'API key header lost');
      final text=await utf8.decoder.bind(request).join();
      if(body==null) {require(text.isEmpty,'expected absent body, got $text');}
      else {
        require(request.headers.contentType?.mimeType=='application/json','JSON content type missing');
        require(jsonEncode(canonical(jsonDecode(text)))==jsonEncode(canonical(body)),'request body mismatch: $text');
      }
      if(absentContentType) require(request.headers.contentType==null,'absent body has content type');
    } catch(error,stack) {failure=error;failureStack=stack;}
    request.response.statusCode=status;
    if(response.isNotEmpty) {request.response.headers.contentType=ContentType.json;request.response.write(response);}
    await request.response.close();received.complete();
  });
  final client=MailchannelsEmailApi(basePathOverride:'http://127.0.0.1:${server.port}');
  try {
    await check(client);
    await received.future.timeout(const Duration(seconds:3));
    if(failure!=null) Error.throwWithStackTrace(failure!,failureStack!);
    require(requests==1,'unexpected retry');
    checks++;print('PASS $method $target HTTP $status');
  } finally {client.dio.close(force:true);await server.close(force:true);}
}

import 'package:dio/dio.dart';

/// Routine formatting is redacted; explicit error/request/response fields remain raw.
class MailChannelsException extends DioException {
  final String? rawMessage;
  MailChannelsException({required super.requestOptions, super.response,
    super.type = DioExceptionType.unknown, super.error, super.stackTrace,
    String? message}) : rawMessage=message,
    super(message:'MailChannels request failed; details redacted');
  @override
  String toString() => 'MailChannelsException (${type.name}, status ${response?.statusCode}); details redacted';
}

Future<Response<T>> redactDioFuture<T>(Future<Response<T>> pending) async {
  try { return await pending; }
  on DioException catch (error) {
    if (error is MailChannelsException) rethrow;
    throw MailChannelsException(requestOptions:error.requestOptions,response:error.response,
      type:error.type,error:error.error,stackTrace:error.stackTrace,message:error.message);
  }
}

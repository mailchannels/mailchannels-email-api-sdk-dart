import 'package:mailchannels_email_api/src/mailchannels_deadline.dart';
import 'package:mailchannels_email_api/src/mailchannels_exception.dart';
import 'package:mailchannels_email_api/src/model/send_email_result.dart';
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:mailchannels_email_api/src/api_util.dart';
import 'package:mailchannels_email_api/src/model/async_send_response.dart';
import 'package:mailchannels_email_api/src/model/mail_send_body.dart';
import 'package:mailchannels_email_api/src/model/message.dart';

class SendApi {

  final Dio _dio;

  final Serializers _serializers;

  const SendApi(this._dio, this._serializers);

  /// Send an Email Asynchronously
  /// Queues an email message for asynchronous processing and returns immediately with a request ID.  The email will be processed in the background, and you&#39;ll receive webhook events for all delivery status updates (e.g. dropped, processed, delivered, hard-bounced). These webhook events are identical to those sent for the synchronous /send endpoint.  Use this endpoint when you need to send emails without waiting for processing to complete. This can improve your application&#39;s response time, especially when sending to multiple recipients. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [mailSendBody] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AsyncSendResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AsyncSendResponse>> queueEmail({ 
    required String xApiKey,
    required MailSendBody mailSendBody,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/send-async';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        r'X-Api-Key': xApiKey,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(MailSendBody);
      _bodyData = _serializers.serialize(mailSendBody, specifiedType: _type);

    } catch(error, stackTrace) {
      throw MailChannelsException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await redactDioFuture(withMailChannelsDeadline(
      (effectiveCancelToken) => _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: effectiveCancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      ), cancelToken, requestTimeout));

    AsyncSendResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AsyncSendResponse),
      ) as AsyncSendResponse;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AsyncSendResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Send an Email
  /// Sends an email message to one or more recipients.  **Click Tracking Notes:** Only links (&#x60;&lt;a&gt;&#x60; tags) meeting all of the following conditions are processed for click tracking: - The URL is non-empty. - The URL starts with \&quot;http\&quot; or \&quot;https\&quot;. - The link does not have a clicktracking attribute set to &#39;off&#39;. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [mailSendBody] 
  /// * [dryRun] - When present and set to true, the message will not be sent. Instead, the fully rendered message is returned. This can be useful for testing. 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Message] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SendEmailResult>> sendEmail({ 
    required String xApiKey,
    required MailSendBody mailSendBody,
    bool? dryRun,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/send';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        r'X-Api-Key': xApiKey,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (dryRun != null) r'dry-run': encodeQueryParameter(_serializers, dryRun, const FullType(bool)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(MailSendBody);
      _bodyData = _serializers.serialize(mailSendBody, specifiedType: _type);

    } catch(error, stackTrace) {
      throw MailChannelsException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await redactDioFuture(withMailChannelsDeadline(
      (effectiveCancelToken) => _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: effectiveCancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      ), cancelToken, requestTimeout));

    SendEmailResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null || rawResponse == '' ? null : SendEmailResult.decode(_response.statusCode, rawResponse, _serializers);

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SendEmailResult>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}

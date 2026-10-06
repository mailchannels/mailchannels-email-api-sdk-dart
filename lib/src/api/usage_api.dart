import 'package:mailchannels_email_api/src/mailchannels_deadline.dart';
import 'package:mailchannels_email_api/src/mailchannels_exception.dart';
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:mailchannels_email_api/src/model/usage_stats.dart';

class UsageApi {

  final Dio _dio;

  final Serializers _serializers;

  const UsageApi(this._dio, this._serializers);

  /// Retrieve Usage Stats
  /// Retrieves usage statistics during the current billing period.
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UsageStats] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UsageStats>> getUsage({ 
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/usage';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        r'X-Api-Key': xApiKey,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await redactDioFuture(withMailChannelsDeadline(
      (effectiveCancelToken) => _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: effectiveCancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      ), cancelToken, requestTimeout));

    UsageStats? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(UsageStats),
      ) as UsageStats;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UsageStats>(
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

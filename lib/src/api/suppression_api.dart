import 'package:mailchannels_email_api/src/mailchannels_deadline.dart';
import 'package:mailchannels_email_api/src/mailchannels_exception.dart';
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:mailchannels_email_api/src/api_util.dart';
import 'package:mailchannels_email_api/src/model/suppression_list_input.dart';
import 'package:mailchannels_email_api/src/model/suppression_list_response.dart';

class SuppressionApi {

  final Dio _dio;

  final Serializers _serializers;

  const SuppressionApi(this._dio, this._serializers);

  /// Create Suppression Entries
  /// Creates suppression entries for the specified account. Parent accounts can create suppression entries for all associated sub-accounts. If suppression_type is not provided, it defaults to &#39;non-transactional&#39;. The operation is atomic, meaning all entries are successfully added or none are added if an error occurs. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [suppressionListInput] - The details of the suppression entries to create.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> createSuppressions({ 
    required String xApiKey,
    required SuppressionListInput suppressionListInput,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/suppression-list';
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
      const _type = FullType(SuppressionListInput);
      _bodyData = _serializers.serialize(suppressionListInput, specifiedType: _type);

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

    return _response;
  }

  /// Delete Suppression Entry
  /// Deletes suppression entry associated with the account based on the specified recipient and source. If source is not provided, it defaults to &#39;api&#39;. If source is set to &#39;all&#39;, all suppression entries related to the specified recipient will be deleted. 
  ///
  /// Parameters:
  /// * [recipient] 
  /// * [xApiKey] 
  /// * [source_] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteSuppression({ 
    required String recipient,
    required String xApiKey,
    String? source_ = 'api',
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/suppression-list/recipients/{recipient}'.replaceAll('{' r'recipient' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, recipient, const FullType(String)).toString()));
    final _options = Options(
      method: r'DELETE',
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

    final _queryParameters = <String, dynamic>{
      if (source_ != null) r'source': encodeQueryParameter(_serializers, source_, const FullType(String)),
    };

    final _response = await redactDioFuture(withMailChannelsDeadline(
      (effectiveCancelToken) => _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: effectiveCancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      ), cancelToken, requestTimeout));

    return _response;
  }

  /// Retrieve Suppression List
  /// Retrieve suppression entries associated with the specified account. Supports filtering by recipient, source and creation date range. The response is paginated, with a default limit of 1000 entries per page and an offset of 0. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [recipient] 
  /// * [source_] 
  /// * [createdBefore] - The date and/or time before which the suppression entries were created. Format: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ 
  /// * [createdAfter] - The date and/or time after which the suppression entries were created. Format: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ 
  /// * [limit] - The maximum number of suppression entries to return. The default is 1000. 
  /// * [offset] - The number of suppression entries to skip before returning results. The default is 0. 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SuppressionListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SuppressionListResponse>> listSuppressions({ 
    required String xApiKey,
    String? recipient,
    String? source_,
    String? createdBefore,
    String? createdAfter,
    int? limit = 1000,
    int? offset = 0,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/suppression-list';
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

    final _queryParameters = <String, dynamic>{
      if (recipient != null) r'recipient': encodeQueryParameter(_serializers, recipient, const FullType(String)),
      if (source_ != null) r'source': encodeQueryParameter(_serializers, source_, const FullType(String)),
      if (createdBefore != null) r'created_before': encodeQueryParameter(_serializers, createdBefore, const FullType(String)),
      if (createdAfter != null) r'created_after': encodeQueryParameter(_serializers, createdAfter, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (offset != null) r'offset': encodeQueryParameter(_serializers, offset, const FullType(int)),
    };

    final _response = await redactDioFuture(withMailChannelsDeadline(
      (effectiveCancelToken) => _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: effectiveCancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      ), cancelToken, requestTimeout));

    SuppressionListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SuppressionListResponse),
      ) as SuppressionListResponse;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SuppressionListResponse>(
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

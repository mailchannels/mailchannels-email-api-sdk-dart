import 'package:mailchannels_email_api/src/mailchannels_deadline.dart';
import 'package:mailchannels_email_api/src/mailchannels_exception.dart';
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:mailchannels_email_api/src/api_util.dart';
import 'package:mailchannels_email_api/src/model/check_domain_body.dart';
import 'package:mailchannels_email_api/src/model/check_domain_result.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_info.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_list.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_pair_create_request.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_pair_update_request.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_rotate_request.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_rotate_response.dart';

class DKIMApi {

  final Dio _dio;

  final Serializers _serializers;

  const DKIMApi(this._dio, this._serializers);

  /// DKIM, SPF &amp; Domain Lockdown Check
  /// Validates a domain&#39;s email authentication setup by retrieving its DKIM, SPF, and Domain Lockdown status. This endpoint checks whether the domain is properly configured for secure email delivery. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [checkDomainBody] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CheckDomainResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CheckDomainResult>> checkDomain({ 
    required String xApiKey,
    required CheckDomainBody checkDomainBody,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/check-domain';
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
      const _type = FullType(CheckDomainBody);
      _bodyData = _serializers.serialize(checkDomainBody, specifiedType: _type);

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

    CheckDomainResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CheckDomainResult),
      ) as CheckDomainResult;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CheckDomainResult>(
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

  /// Create DKIM Key Pair
  /// Create a DKIM key pair for a specified domain and selector using the specified algorithm and key length, for the current customer. 
  ///
  /// Parameters:
  /// * [domain] 
  /// * [xApiKey] 
  /// * [dKIMKeyPairCreateRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DKIMKeyInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DKIMKeyInfo>> createDkimKey({ 
    required String domain,
    required String xApiKey,
    required DKIMKeyPairCreateRequest dKIMKeyPairCreateRequest,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/domains/{domain}/dkim-keys'.replaceAll('{' r'domain' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, domain, const FullType(String)).toString()));
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
      const _type = FullType(DKIMKeyPairCreateRequest);
      _bodyData = _serializers.serialize(dKIMKeyPairCreateRequest, specifiedType: _type);

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

    DKIMKeyInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(DKIMKeyInfo),
      ) as DKIMKeyInfo;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DKIMKeyInfo>(
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

  /// Retrieve DKIM Keys
  /// Search for DKIM keys by domain, with optional filters. If selector is provided, at most one key will be returned. 
  ///
  /// Parameters:
  /// * [domain] 
  /// * [xApiKey] 
  /// * [selector] 
  /// * [status] 
  /// * [offset] - Number of keys to skip before returning results. The default is 0. 
  /// * [limit] - Maximum number of keys to return. The default is 10. 
  /// * [includeDnsRecord] - If true, includes the suggested DKIM DNS record for each returned key. Defaults to false. 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DKIMKeyList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DKIMKeyList>> listDkimKeys({ 
    required String domain,
    required String xApiKey,
    String? selector,
    String? status,
    int? offset = 0,
    int? limit = 10,
    bool? includeDnsRecord = false,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/domains/{domain}/dkim-keys'.replaceAll('{' r'domain' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, domain, const FullType(String)).toString()));
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
      if (selector != null) r'selector': encodeQueryParameter(_serializers, selector, const FullType(String)),
      if (status != null) r'status': encodeQueryParameter(_serializers, status, const FullType(String)),
      if (offset != null) r'offset': encodeQueryParameter(_serializers, offset, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (includeDnsRecord != null) r'include_dns_record': encodeQueryParameter(_serializers, includeDnsRecord, const FullType(bool)),
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

    DKIMKeyList? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(DKIMKeyList),
      ) as DKIMKeyList;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DKIMKeyList>(
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

  /// Rotate DKIM Key Pair
  /// Rotate an active DKIM key pair. Mark the original key as &#39;rotated&#39;, and create a new key pair with the required new key selector, reusing the same algorithm and key length. The rotated key remains valid for signing for a 3-day grace period, and is automatically changed to &#39;retired&#39; 2 weeks after rotation. Publish the new key to its DNS TXT record before rotated key expires for signing as emails sent with an unpublished key will fail DKIM validation by receiving providers. After the grace period, only the new key is valid for signing if published.
  ///
  /// Parameters:
  /// * [domain] 
  /// * [selector] 
  /// * [xApiKey] 
  /// * [dKIMKeyRotateRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DKIMKeyRotateResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DKIMKeyRotateResponse>> rotateDkimKey({ 
    required String domain,
    required String selector,
    required String xApiKey,
    required DKIMKeyRotateRequest dKIMKeyRotateRequest,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/domains/{domain}/dkim-keys/{selector}/rotate'.replaceAll('{' r'domain' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, domain, const FullType(String)).toString())).replaceAll('{' r'selector' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, selector, const FullType(String)).toString()));
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
      const _type = FullType(DKIMKeyRotateRequest);
      _bodyData = _serializers.serialize(dKIMKeyRotateRequest, specifiedType: _type);

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

    DKIMKeyRotateResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(DKIMKeyRotateResponse),
      ) as DKIMKeyRotateResponse;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DKIMKeyRotateResponse>(
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

  /// Update DKIM Key Status
  /// Update fields of an existing DKIM key pair for the specified domain and selector, for the current customer. Currently, only the status field can be updated. revoked: Indicates that the key is compromised and should not be used. retired: Indicates that the key has been rotated and is no longer in use. rotated: Indicates that the key is going through the rotation process. Only active key pairs can be updated to this status, and no new key pair is created. The rotated key can be used to sign emails for 3 days after the status update, and will automatically change to &#39;retired&#39; 2 weeks after update. For a smooth key transition, it is recommended to create and publish a new key pair before signing is disabled for the rotated key. 
  ///
  /// Parameters:
  /// * [domain] 
  /// * [selector] 
  /// * [xApiKey] 
  /// * [dKIMKeyPairUpdateRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> updateDkimKey({ 
    required String domain,
    required String selector,
    required String xApiKey,
    required DKIMKeyPairUpdateRequest dKIMKeyPairUpdateRequest,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/domains/{domain}/dkim-keys/{selector}'.replaceAll('{' r'domain' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, domain, const FullType(String)).toString())).replaceAll('{' r'selector' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, selector, const FullType(String)).toString()));
    final _options = Options(
      method: r'PATCH',
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
      const _type = FullType(DKIMKeyPairUpdateRequest);
      _bodyData = _serializers.serialize(dKIMKeyPairUpdateRequest, specifiedType: _type);

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

}

import 'package:mailchannels_email_api/src/mailchannels_deadline.dart';
import 'package:mailchannels_email_api/src/mailchannels_exception.dart';
import 'package:mailchannels_email_api/src/model/update_tracking_result.dart';
import 'package:mailchannels_email_api/src/model/create_tracking_result.dart';
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:mailchannels_email_api/src/api_util.dart';
import 'package:mailchannels_email_api/src/model/custom_tracking_domain.dart';
import 'package:mailchannels_email_api/src/model/custom_tracking_domain_list_response.dart';
import 'package:mailchannels_email_api/src/model/patch_custom_tracking_domain_request.dart';
import 'package:mailchannels_email_api/src/model/post_custom_tracking_domain_request.dart';

class CustomTrackingApi {

  final Dio _dio;

  final Serializers _serializers;

  const CustomTrackingApi(this._dio, this._serializers);

  /// Register Custom Tracking Domain
  /// Register a custom branded domain for click tracking, open tracking, or unsubscribe handling. By default, MailChannels uses shared domains for these links. Using a custom domain improves brand consistency by replacing shared domains with your own (e.g., click.example.com). Once registered, select the domain at send time using its &#x60;name&#x60;.  Before registration completes, two DNS records must be in place: 1. A TXT record at &#x60;_mailchannels-verify.&lt;hostname&gt;&#x60; containing the verification token    (returned in the 202 response). 2. A CNAME record at &#x60;&lt;hostname&gt;&#x60; pointing to &#x60;links.mailchannels.net&#x60;. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [postCustomTrackingDomainRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CustomTrackingDomain] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CreateTrackingResult>> createCustomTrackingDomain({ 
    required String xApiKey,
    required PostCustomTrackingDomainRequest postCustomTrackingDomainRequest,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/custom-tracking-domains';
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
      const _type = FullType(PostCustomTrackingDomainRequest);
      _bodyData = _serializers.serialize(postCustomTrackingDomainRequest, specifiedType: _type);

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

    CreateTrackingResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null || rawResponse == '' ? null : CreateTrackingResult.decode(_response.statusCode, rawResponse, _serializers);

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CreateTrackingResult>(
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

  /// Delete Custom Tracking Domain
  /// Permanently delete an existing custom tracking domain for the given hostname and scope. The domain can be re-registered if needed. WARNING: Any tracking links or unsubscribe URLs in previously sent emails using this domain will stop working immediately. 
  ///
  /// Parameters:
  /// * [hostname] 
  /// * [scope] 
  /// * [xApiKey] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteCustomTrackingDomain({ 
    required String hostname,
    required String scope,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/custom-tracking-domains/{hostname}/{scope}'.replaceAll('{' r'hostname' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, hostname, const FullType(String)).toString())).replaceAll('{' r'scope' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, scope, const FullType(String)).toString()));
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

    final _response = await redactDioFuture(withMailChannelsDeadline(
      (effectiveCancelToken) => _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: effectiveCancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      ), cancelToken, requestTimeout));

    return _response;
  }

  /// Retrieve Custom Tracking Domains
  /// Retrieve all custom tracking domains registered under your account. Optional filters include domain name, status, scope, limit and offset. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [name] - Filter by custom tracking domain label
  /// * [status] - Filter by status
  /// * [scope] - Filter by scope
  /// * [limit] - The maximum number of domains to return. The default is 100.
  /// * [offset] - The number of domains to skip before returning results. The default is 0.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CustomTrackingDomainListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CustomTrackingDomainListResponse>> listCustomTrackingDomains({ 
    required String xApiKey,
    String? name,
    String? status,
    String? scope,
    int? limit = 100,
    int? offset = 0,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/custom-tracking-domains';
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
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
      if (status != null) r'status': encodeQueryParameter(_serializers, status, const FullType(String)),
      if (scope != null) r'scope': encodeQueryParameter(_serializers, scope, const FullType(String)),
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

    CustomTrackingDomainListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CustomTrackingDomainListResponse),
      ) as CustomTrackingDomainListResponse;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CustomTrackingDomainListResponse>(
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

  /// Update Custom Tracking Domain
  /// Update an existing custom tracking domain by its hostname and scope. Supports updating the custom tracking domain&#39;s name or toggling its active status. 
  ///
  /// Parameters:
  /// * [hostname] 
  /// * [scope] 
  /// * [xApiKey] 
  /// * [patchCustomTrackingDomainRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CustomTrackingDomain] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UpdateTrackingResult>> updateCustomTrackingDomain({ 
    required String hostname,
    required String scope,
    required String xApiKey,
    required PatchCustomTrackingDomainRequest patchCustomTrackingDomainRequest,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/custom-tracking-domains/{hostname}/{scope}'.replaceAll('{' r'hostname' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, hostname, const FullType(String)).toString())).replaceAll('{' r'scope' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, scope, const FullType(String)).toString()));
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
      const _type = FullType(PatchCustomTrackingDomainRequest);
      _bodyData = _serializers.serialize(patchCustomTrackingDomainRequest, specifiedType: _type);

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

    UpdateTrackingResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null || rawResponse == '' ? null : UpdateTrackingResult.decode(_response.statusCode, rawResponse, _serializers);

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UpdateTrackingResult>(
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

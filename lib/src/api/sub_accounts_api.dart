import 'package:mailchannels_email_api/src/mailchannels_deadline.dart';
import 'package:mailchannels_email_api/src/mailchannels_exception.dart';
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/api_util.dart';
import 'package:mailchannels_email_api/src/model/api_key.dart';
import 'package:mailchannels_email_api/src/model/limit.dart';
import 'package:mailchannels_email_api/src/model/limit_input.dart';
import 'package:mailchannels_email_api/src/model/limit_update_result.dart';
import 'package:mailchannels_email_api/src/model/smtp_password.dart';
import 'package:mailchannels_email_api/src/model/sub_account_data.dart';
import 'package:mailchannels_email_api/src/model/sub_account_details.dart';
import 'package:mailchannels_email_api/src/model/usage_stats.dart';

class SubAccountsApi {

  final Dio _dio;

  final Serializers _serializers;

  const SubAccountsApi(this._dio, this._serializers);

  /// Activate Sub-account
  /// Activates a suspended sub-account identified by its handle, restoring its ability to send emails. 
  ///
  /// Parameters:
  /// * [handle] - Handle of sub-account to be activated.
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
  Future<Response<void>> activateSubaccount({ 
    required String handle,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/activate'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

  /// Create Sub-account
  /// Creates a new sub-account under the parent account. Each sub-account must have a unique handle composed solely of lowercase alphanumeric characters. If no handle is provided, a random handle will be generated. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [subAccountData] - The details of the sub-account to create.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SubAccountDetails] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SubAccountDetails>> createSubaccount({ 
    required String xApiKey,
    SubAccountData? subAccountData,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account';
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
      contentType: subAccountData == null ? null : 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(SubAccountData);
      _bodyData = subAccountData == null ? null : _serializers.serialize(subAccountData, specifiedType: _type);

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

    SubAccountDetails? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SubAccountDetails),
      ) as SubAccountDetails;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SubAccountDetails>(
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

  /// Create Sub-account API Key
  /// Creates a new API key for the specified sub-account. 
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account to create API key for.
  /// * [xApiKey] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [APIKey] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<APIKey>> createSubaccountApiKey({ 
    required String handle,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/api-key'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

    APIKey? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(APIKey),
      ) as APIKey;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<APIKey>(
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

  /// Create Sub-account SMTP Password
  /// Creates a new SMTP password for the specified sub-account. 
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account to create SMTP password for.
  /// * [xApiKey] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SMTPPassword] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SMTPPassword>> createSubaccountSmtpPassword({ 
    required String handle,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/smtp-password'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

    SMTPPassword? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SMTPPassword),
      ) as SMTPPassword;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SMTPPassword>(
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

  /// Delete Sub-account
  /// Deletes the sub-account identified by its handle.
  ///
  /// Parameters:
  /// * [handle] - Handle of sub-account to be deleted.
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
  Future<Response<void>> deleteSubaccount({ 
    required String handle,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

  /// Delete Sub-account API Key
  /// Deletes the API key identified by its ID for the specified sub-account. 
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account for which the API key should be deleted. 
  /// * [id] - The ID of the API key to delete.
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
  Future<Response<void>> deleteSubaccountApiKey({ 
    required String handle,
    required int id,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/api-key/{id}'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString())).replaceAll('{' r'id' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, id, const FullType(int)).toString()));
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

  /// Delete Sub-account Limit
  /// Deletes the limit for the specified sub-account. After a successful deletion, the specified sub-account will be limited to the parent account&#39;s limit. 
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account to delete limit for.
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
  Future<Response<void>> deleteSubaccountLimit({ 
    required String handle,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/limit'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

  /// Delete Sub-account SMTP Password
  /// Deletes the SMTP password identified by its ID for the specified sub-account. 
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account for which the SMTP password should be deleted.
  /// * [id] - The ID of the SMTP password to delete.
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
  Future<Response<void>> deleteSubaccountSmtpPassword({ 
    required String handle,
    required int id,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/smtp-password/{id}'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString())).replaceAll('{' r'id' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, id, const FullType(int)).toString()));
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

  /// Retrieve Sub-account Limit
  /// Retrieves the limit of a specified sub-account. A value of -1 indicates that the sub-account inherits the parent account&#39;s limit, allowing the sub-account to utilize any remaining capacity within the parent account&#39;s allocation. 
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account to retrieve the limit for.
  /// * [xApiKey] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Limit] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Limit>> getSubaccountLimit({ 
    required String handle,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/limit'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

    Limit? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(Limit),
      ) as Limit;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Limit>(
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

  /// Retrieve Sub-account Usage Stats
  /// Retrieves usage statistics for the specified sub-account during the current billing period.
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account to query usage stats for.
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
  Future<Response<UsageStats>> getSubaccountUsage({ 
    required String handle,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/usage'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

  /// Retrieve Sub-account API Keys
  /// Retrieves details of all API keys associated with the specified sub-account. For security reasons, the full API key is **not** returned; only the key ID and a partially redacted version are provided. 
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account to retrieve the API key for.
  /// * [xApiKey] 
  /// * [limit] 
  /// * [offset] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<APIKey>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<APIKey>>> listSubaccountApiKeys({ 
    required String handle,
    required String xApiKey,
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
    final _path = r'/sub-account/{handle}/api-key'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

    BuiltList<APIKey>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(APIKey)]),
      ) as BuiltList<APIKey>;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<APIKey>>(
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

  /// Retrieve Sub-account SMTP Passwords
  /// Retrieves details of all SMTP passwords associated with the specified sub-account. For security, the full SMTP password is **not** returned; only the password ID and a partially redacted version are provided. 
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account to retrieve the SMTP password for.
  /// * [xApiKey] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SMTPPassword>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<SMTPPassword>>> listSubaccountSmtpPasswords({ 
    required String handle,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/smtp-password'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

    BuiltList<SMTPPassword>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(SMTPPassword)]),
      ) as BuiltList<SMTPPassword>;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<SMTPPassword>>(
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

  /// Retrieve Sub-accounts
  /// Retrieves all sub-accounts associated with the parent account. The response is paginated with a default limit of 1000 sub-accounts per page and an offset of 0. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [limit] 
  /// * [offset] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SubAccountDetails>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<SubAccountDetails>>> listSubaccounts({ 
    required String xApiKey,
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
    final _path = r'/sub-account';
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

    BuiltList<SubAccountDetails>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(SubAccountDetails)]),
      ) as BuiltList<SubAccountDetails>;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<SubAccountDetails>>(
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

  /// Set Sub-account Limit
  /// Sets the limit for the specified sub-account. The minimum allowed sends is 0. 
  ///
  /// Parameters:
  /// * [handle] - Handle of the sub-account to set limit for.
  /// * [xApiKey] 
  /// * [limitInput] - The value the sub-account limit to set.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [LimitUpdateResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<LimitUpdateResult>> setSubaccountLimit({ 
    required String handle,
    required String xApiKey,
    required LimitInput limitInput,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/limit'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
    final _options = Options(
      method: r'PUT',
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
      const _type = FullType(LimitInput);
      _bodyData = _serializers.serialize(limitInput, specifiedType: _type);

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

    LimitUpdateResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(LimitUpdateResult),
      ) as LimitUpdateResult;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<LimitUpdateResult>(
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

  /// Suspend Sub-account
  /// Suspends the sub-account identified by its handle. This action disables the account, preventing it from sending any emails until it is reactivated. 
  ///
  /// Parameters:
  /// * [handle] - Handle of sub-account to be suspended.
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
  Future<Response<void>> suspendSubaccount({ 
    required String handle,
    required String xApiKey,
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/sub-account/{handle}/suspend'.replaceAll('{' r'handle' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, handle, const FullType(String)).toString()));
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

}

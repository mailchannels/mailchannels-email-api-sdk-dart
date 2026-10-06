import 'package:mailchannels_email_api/src/mailchannels_deadline.dart';
import 'package:mailchannels_email_api/src/mailchannels_exception.dart';
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:mailchannels_email_api/src/api_util.dart';
import 'package:mailchannels_email_api/src/model/metrics_engagement.dart';
import 'package:mailchannels_email_api/src/model/metrics_performance.dart';
import 'package:mailchannels_email_api/src/model/metrics_recipient_behaviour.dart';
import 'package:mailchannels_email_api/src/model/metrics_sender_response.dart';
import 'package:mailchannels_email_api/src/model/metrics_volume.dart';

class MetricsApi {

  final Dio _dio;

  final Serializers _serializers;

  const MetricsApi(this._dio, this._serializers);

  /// Retrieve Engagement Metrics
  /// Retrieve engagement metrics for messages sent from your account, including counts of open and click events. Supports optional filters for time range, and campaign ID. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [startTime] - The beginning of the time range for retrieving message engagement metrics (inclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ. Defaults to one month ago if not provided. 
  /// * [endTime] - The end of the time range for retrieving message engagement metrics (exclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ. Defaults to the current time if not provided. 
  /// * [campaignId] - The ID of the campaign to filter metrics by. If not provided, metrics for all campaigns will be returned. 
  /// * [interval] - The interval for aggregating metrics data. Allowed values:   - hour: Hourly breakdown   - day: Daily breakdown (default)   - week: Weekly breakdown   - month: Monthly breakdown 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MetricsEngagement] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MetricsEngagement>> getEngagementMetrics({ 
    required String xApiKey,
    String? startTime,
    String? endTime,
    String? campaignId,
    String? interval = 'day',
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/metrics/engagement';
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
      if (startTime != null) r'start_time': encodeQueryParameter(_serializers, startTime, const FullType(String)),
      if (endTime != null) r'end_time': encodeQueryParameter(_serializers, endTime, const FullType(String)),
      if (campaignId != null) r'campaign_id': encodeQueryParameter(_serializers, campaignId, const FullType(String)),
      if (interval != null) r'interval': encodeQueryParameter(_serializers, interval, const FullType(String)),
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

    MetricsEngagement? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(MetricsEngagement),
      ) as MetricsEngagement;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MetricsEngagement>(
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

  /// Retrieve Performance Metrics
  /// Retrieve performance metrics for messages sent from your account, including counts of processed, delivered, hard-bounced, and complained events. Supports optional filters for time range, and campaign ID. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [startTime] - The beginning of the time range for retrieving message performance metrics (inclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ. Defaults to one month ago if not provided. 
  /// * [endTime] - The end of the time range for retrieving message performance metrics (exclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ. Defaults to the current time if not provided. 
  /// * [campaignId] - The ID of the campaign to filter metrics by. If not provided, metrics for all campaigns will be returned. 
  /// * [interval] - The interval for aggregating metrics data. Allowed values:   - hour: Hourly breakdown   - day: Daily breakdown (default)   - week: Weekly breakdown   - month: Monthly breakdown 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MetricsPerformance] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MetricsPerformance>> getPerformanceMetrics({ 
    required String xApiKey,
    String? startTime,
    String? endTime,
    String? campaignId,
    String? interval = 'day',
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/metrics/performance';
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
      if (startTime != null) r'start_time': encodeQueryParameter(_serializers, startTime, const FullType(String)),
      if (endTime != null) r'end_time': encodeQueryParameter(_serializers, endTime, const FullType(String)),
      if (campaignId != null) r'campaign_id': encodeQueryParameter(_serializers, campaignId, const FullType(String)),
      if (interval != null) r'interval': encodeQueryParameter(_serializers, interval, const FullType(String)),
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

    MetricsPerformance? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(MetricsPerformance),
      ) as MetricsPerformance;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MetricsPerformance>(
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

  /// Retrieve Recipient Behaviour Metrics
  /// Retrieve recipient behaviour metrics for messages sent from your account, including counts of unsubscribed events. Supports optional filters for time range, and campaign ID. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [startTime] - The beginning of the time range for retrieving recipient behaviour metrics (inclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ. Defaults to one month ago if not provided. 
  /// * [endTime] - The end of the time range for retrieving recipient behaviour metrics (exclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ. Defaults to the current time if not provided. 
  /// * [campaignId] - The ID of the campaign to filter metrics by. If not provided, metrics for all campaigns will be returned. 
  /// * [interval] - The interval for aggregating metrics data. Allowed values:   - hour: Hourly breakdown   - day: Daily breakdown (default)   - week: Weekly breakdown   - month: Monthly breakdown 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MetricsRecipientBehaviour] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MetricsRecipientBehaviour>> getRecipientBehaviourMetrics({ 
    required String xApiKey,
    String? startTime,
    String? endTime,
    String? campaignId,
    String? interval = 'day',
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/metrics/recipient-behaviour';
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
      if (startTime != null) r'start_time': encodeQueryParameter(_serializers, startTime, const FullType(String)),
      if (endTime != null) r'end_time': encodeQueryParameter(_serializers, endTime, const FullType(String)),
      if (campaignId != null) r'campaign_id': encodeQueryParameter(_serializers, campaignId, const FullType(String)),
      if (interval != null) r'interval': encodeQueryParameter(_serializers, interval, const FullType(String)),
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

    MetricsRecipientBehaviour? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(MetricsRecipientBehaviour),
      ) as MetricsRecipientBehaviour;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MetricsRecipientBehaviour>(
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

  /// Retrieve Sender Metrics
  /// Retrieves a list of senders, either sub-accounts or campaigns, with their associated message metrics. Sorted by total # of sent messages (processed + dropped) Supports optional filter for time range, and optional settings for limit, offset, and sort order. Note: senders without any messages in the given time range will not be included in the results. The default time range is from one month ago to now, and the default sort order is descending. 
  ///
  /// Parameters:
  /// * [senderType] 
  /// * [xApiKey] 
  /// * [startTime] - The beginning of the time range for retrieving top senders metrics (inclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ Defaults to one month ago if not provided. 
  /// * [endTime] - The end of the time range for retrieving top senders metrics (exclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ Defaults to the current time if not provided. 
  /// * [limit] - The maximum number of senders to return The default is 10. 
  /// * [offset] - The number of senders to skip before returning results. 
  /// * [sortOrder] - The order in which to sort the results, based on total messages (processed + dropped). 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MetricsSenderResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MetricsSenderResponse>> getSenderMetrics({ 
    required String senderType,
    required String xApiKey,
    String? startTime,
    String? endTime,
    int? limit = 10,
    int? offset = 0,
    String? sortOrder = 'desc',
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/metrics/senders/{sender_type}'.replaceAll('{' r'sender_type' '}', Uri.encodeComponent(encodeQueryParameter(_serializers, senderType, const FullType(String)).toString()));
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
      if (startTime != null) r'start_time': encodeQueryParameter(_serializers, startTime, const FullType(String)),
      if (endTime != null) r'end_time': encodeQueryParameter(_serializers, endTime, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (offset != null) r'offset': encodeQueryParameter(_serializers, offset, const FullType(int)),
      if (sortOrder != null) r'sort_order': encodeQueryParameter(_serializers, sortOrder, const FullType(String)),
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

    MetricsSenderResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(MetricsSenderResponse),
      ) as MetricsSenderResponse;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MetricsSenderResponse>(
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

  /// Retrieve Volume Metrics
  /// Retrieve volume metrics for messages sent from your account, including counts of processed, delivered and dropped events. Supports optional filters for time range and campaign ID. 
  ///
  /// Parameters:
  /// * [xApiKey] 
  /// * [startTime] - The beginning of the time range for retrieving message volume metrics (inclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ. Defaults to one month ago if not provided. 
  /// * [endTime] - The end of the time range for retrieving message volume metrics (exclusive). Formats: YYYY-MM-DD or YYYY-MM-DDTHH:MM:SSZ. Defaults to the current time if not provided. 
  /// * [campaignId] - The ID of the campaign to filter metrics by. If not provided, metrics for all campaigns will be returned. 
  /// * [interval] - The interval for aggregating metrics data. Allowed values:   - hour: Hourly breakdown   - day: Daily breakdown (default)   - week: Weekly breakdown   - month: Monthly breakdown 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MetricsVolume] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MetricsVolume>> getVolumeMetrics({ 
    required String xApiKey,
    String? startTime,
    String? endTime,
    String? campaignId,
    String? interval = 'day',
    CancelToken? cancelToken,
    Duration requestTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/metrics/volume';
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
      if (startTime != null) r'start_time': encodeQueryParameter(_serializers, startTime, const FullType(String)),
      if (endTime != null) r'end_time': encodeQueryParameter(_serializers, endTime, const FullType(String)),
      if (campaignId != null) r'campaign_id': encodeQueryParameter(_serializers, campaignId, const FullType(String)),
      if (interval != null) r'interval': encodeQueryParameter(_serializers, interval, const FullType(String)),
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

    MetricsVolume? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(MetricsVolume),
      ) as MetricsVolume;

    } catch (error, stackTrace) {
      throw MailChannelsException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MetricsVolume>(
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

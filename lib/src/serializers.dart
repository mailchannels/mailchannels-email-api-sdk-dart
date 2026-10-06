//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:mailchannels_email_api/src/date_serializer.dart';
import 'package:mailchannels_email_api/src/model/date.dart';

import 'package:mailchannels_email_api/src/model/api_key.dart';
import 'package:mailchannels_email_api/src/model/async_send_response.dart';
import 'package:mailchannels_email_api/src/model/attachment.dart';
import 'package:mailchannels_email_api/src/model/check_domain_body.dart';
import 'package:mailchannels_email_api/src/model/check_domain_result.dart';
import 'package:mailchannels_email_api/src/model/check_results.dart';
import 'package:mailchannels_email_api/src/model/content_item.dart';
import 'package:mailchannels_email_api/src/model/custom_tracking_domain.dart';
import 'package:mailchannels_email_api/src/model/custom_tracking_domain_list_response.dart';
import 'package:mailchannels_email_api/src/model/dkim_dns_record.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_info.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_list.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_pair_create_request.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_pair_update_request.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_rotate_request.dart';
import 'package:mailchannels_email_api/src/model/dkim_key_rotate_response.dart';
import 'package:mailchannels_email_api/src/model/dkim_result.dart';
import 'package:mailchannels_email_api/src/model/dkim_setting.dart';
import 'package:mailchannels_email_api/src/model/dns_setup_required.dart';
import 'package:mailchannels_email_api/src/model/email_address.dart';
import 'package:mailchannels_email_api/src/model/error_response.dart';
import 'package:mailchannels_email_api/src/model/key.dart';
import 'package:mailchannels_email_api/src/model/limit.dart';
import 'package:mailchannels_email_api/src/model/limit_input.dart';
import 'package:mailchannels_email_api/src/model/limit_update_result.dart';
import 'package:mailchannels_email_api/src/model/lockdown_result.dart';
import 'package:mailchannels_email_api/src/model/mail_send_body.dart';
import 'package:mailchannels_email_api/src/model/mail_send_body_tracking_settings.dart';
import 'package:mailchannels_email_api/src/model/mail_send_body_tracking_settings_click_tracking.dart';
import 'package:mailchannels_email_api/src/model/mail_send_body_tracking_settings_open_tracking.dart';
import 'package:mailchannels_email_api/src/model/mail_send_body_unsubscribe_settings.dart';
import 'package:mailchannels_email_api/src/model/message.dart';
import 'package:mailchannels_email_api/src/model/metrics_bucket.dart';
import 'package:mailchannels_email_api/src/model/metrics_engagement.dart';
import 'package:mailchannels_email_api/src/model/metrics_engagement_buckets.dart';
import 'package:mailchannels_email_api/src/model/metrics_performance.dart';
import 'package:mailchannels_email_api/src/model/metrics_performance_buckets.dart';
import 'package:mailchannels_email_api/src/model/metrics_recipient_behaviour.dart';
import 'package:mailchannels_email_api/src/model/metrics_recipient_behaviour_buckets.dart';
import 'package:mailchannels_email_api/src/model/metrics_sender.dart';
import 'package:mailchannels_email_api/src/model/metrics_sender_response.dart';
import 'package:mailchannels_email_api/src/model/metrics_volume.dart';
import 'package:mailchannels_email_api/src/model/metrics_volume_buckets.dart';
import 'package:mailchannels_email_api/src/model/new_key.dart';
import 'package:mailchannels_email_api/src/model/patch_custom_tracking_domain_request.dart';
import 'package:mailchannels_email_api/src/model/personalization.dart';
import 'package:mailchannels_email_api/src/model/post_custom_tracking_domain_request.dart';
import 'package:mailchannels_email_api/src/model/smtp_password.dart';
import 'package:mailchannels_email_api/src/model/send_result.dart';
import 'package:mailchannels_email_api/src/model/send_results.dart';
import 'package:mailchannels_email_api/src/model/sender_domain_result.dart';
import 'package:mailchannels_email_api/src/model/sender_domain_result_a.dart';
import 'package:mailchannels_email_api/src/model/sender_domain_result_mx.dart';
import 'package:mailchannels_email_api/src/model/spf_result.dart';
import 'package:mailchannels_email_api/src/model/sub_account_data.dart';
import 'package:mailchannels_email_api/src/model/sub_account_details.dart';
import 'package:mailchannels_email_api/src/model/suppression_entry.dart';
import 'package:mailchannels_email_api/src/model/suppression_entry_response.dart';
import 'package:mailchannels_email_api/src/model/suppression_list_input.dart';
import 'package:mailchannels_email_api/src/model/suppression_list_response.dart';
import 'package:mailchannels_email_api/src/model/usage_stats.dart';
import 'package:mailchannels_email_api/src/model/webhook.dart';
import 'package:mailchannels_email_api/src/model/webhook_batch.dart';
import 'package:mailchannels_email_api/src/model/webhook_batch_duration.dart';
import 'package:mailchannels_email_api/src/model/webhook_batch_result.dart';
import 'package:mailchannels_email_api/src/model/webhook_resend_response.dart';
import 'package:mailchannels_email_api/src/model/webhook_response.dart';
import 'package:mailchannels_email_api/src/model/webhook_validation_request_body.dart';
import 'package:mailchannels_email_api/src/model/webhook_validation_result.dart';
import 'package:mailchannels_email_api/src/model/webhook_validation_results.dart';

part 'serializers.g.dart';

@SerializersFor([
  APIKey,
  AsyncSendResponse,
  Attachment,
  CheckDomainBody,
  CheckDomainResult,
  CheckResults,
  ContentItem,
  CustomTrackingDomain,
  CustomTrackingDomainListResponse,
  DKIMDnsRecord,
  DKIMKeyInfo,
  DKIMKeyList,
  DKIMKeyPairCreateRequest,
  DKIMKeyPairUpdateRequest,
  DKIMKeyRotateRequest,
  DKIMKeyRotateResponse,
  DkimResult,
  DkimSetting,
  DnsSetupRequired,
  EmailAddress,
  ErrorResponse,
  Key,
  Limit,
  LimitInput,
  LimitUpdateResult,
  LockdownResult,
  MailSendBody,
  MailSendBodyTrackingSettings,
  MailSendBodyTrackingSettingsClickTracking,
  MailSendBodyTrackingSettingsOpenTracking,
  MailSendBodyUnsubscribeSettings,
  Message,
  MetricsBucket,
  MetricsEngagement,
  MetricsEngagementBuckets,
  MetricsPerformance,
  MetricsPerformanceBuckets,
  MetricsRecipientBehaviour,
  MetricsRecipientBehaviourBuckets,
  MetricsSender,
  MetricsSenderResponse,
  MetricsVolume,
  MetricsVolumeBuckets,
  NewKey,
  PatchCustomTrackingDomainRequest,
  Personalization,
  PostCustomTrackingDomainRequest,
  SMTPPassword,
  SendResult,
  SendResults,
  SenderDomainResult,
  SenderDomainResultA,
  SenderDomainResultMx,
  SpfResult,
  SubAccountData,
  SubAccountDetails,
  SuppressionEntry,
  SuppressionEntryResponse,
  SuppressionListInput,
  SuppressionListResponse,
  UsageStats,
  Webhook,
  WebhookBatch,
  WebhookBatchDuration,
  WebhookBatchResult,
  WebhookResendResponse,
  WebhookResponse,
  WebhookValidationRequestBody,
  WebhookValidationResult,
  WebhookValidationResults,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(String)]),
        () => MapBuilder<String, String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(WebhookBatch)]),
        () => ListBuilder<WebhookBatch>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(EmailAddress)]),
        () => ListBuilder<EmailAddress>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType.nullable(DKIMDnsRecord)]),
        () => ListBuilder<DKIMDnsRecord>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(WebhookValidationResult)]),
        () => ListBuilder<WebhookValidationResult>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MetricsBucket)]),
        () => ListBuilder<MetricsBucket>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CustomTrackingDomain)]),
        () => ListBuilder<CustomTrackingDomain>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DkimSetting)]),
        () => ListBuilder<DkimSetting>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ContentItem)]),
        () => ListBuilder<ContentItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DKIMKeyInfo)]),
        () => ListBuilder<DKIMKeyInfo>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SubAccountDetails)]),
        () => ListBuilder<SubAccountDetails>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DkimResult)]),
        () => ListBuilder<DkimResult>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(APIKey)]),
        () => ListBuilder<APIKey>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SendResult)]),
        () => ListBuilder<SendResult>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SMTPPassword)]),
        () => ListBuilder<SMTPPassword>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SuppressionEntry)]),
        () => ListBuilder<SuppressionEntry>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Personalization)]),
        () => ListBuilder<Personalization>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MetricsSender)]),
        () => ListBuilder<MetricsSender>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SuppressionEntryResponse)]),
        () => ListBuilder<SuppressionEntryResponse>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Attachment)]),
        () => ListBuilder<Attachment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Webhook)]),
        () => ListBuilder<Webhook>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

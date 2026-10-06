// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add(APIKey.serializer)
          ..add(AsyncSendResponse.serializer)
          ..add(Attachment.serializer)
          ..add(CheckDomainBody.serializer)
          ..add(CheckDomainResult.serializer)
          ..add(CheckResults.serializer)
          ..add(ContentItem.serializer)
          ..add(ContentItemTemplateTypeEnum.serializer)
          ..add(CustomTrackingDomain.serializer)
          ..add(CustomTrackingDomainListResponse.serializer)
          ..add(CustomTrackingDomainScopeEnum.serializer)
          ..add(CustomTrackingDomainStatusEnum.serializer)
          ..add(DKIMDnsRecord.serializer)
          ..add(DKIMKeyInfo.serializer)
          ..add(DKIMKeyInfoStatusEnum.serializer)
          ..add(DKIMKeyList.serializer)
          ..add(DKIMKeyPairCreateRequest.serializer)
          ..add(DKIMKeyPairCreateRequestAlgorithmEnum.serializer)
          ..add(DKIMKeyPairUpdateRequest.serializer)
          ..add(DKIMKeyPairUpdateRequestStatusEnum.serializer)
          ..add(DKIMKeyRotateRequest.serializer)
          ..add(DKIMKeyRotateResponse.serializer)
          ..add(DkimResult.serializer)
          ..add(DkimResultVerdictEnum.serializer)
          ..add(DkimSetting.serializer)
          ..add(DnsSetupRequired.serializer)
          ..add(EmailAddress.serializer)
          ..add(ErrorResponse.serializer)
          ..add(Key.serializer)
          ..add(Limit.serializer)
          ..add(LimitInput.serializer)
          ..add(LimitUpdateResult.serializer)
          ..add(LockdownResult.serializer)
          ..add(LockdownResultVerdictEnum.serializer)
          ..add(MailSendBody.serializer)
          ..add(MailSendBodyTrackingSettings.serializer)
          ..add(MailSendBodyTrackingSettingsClickTracking.serializer)
          ..add(MailSendBodyTrackingSettingsOpenTracking.serializer)
          ..add(MailSendBodyUnsubscribeSettings.serializer)
          ..add(Message.serializer)
          ..add(MetricsBucket.serializer)
          ..add(MetricsEngagement.serializer)
          ..add(MetricsEngagementBuckets.serializer)
          ..add(MetricsPerformance.serializer)
          ..add(MetricsPerformanceBuckets.serializer)
          ..add(MetricsRecipientBehaviour.serializer)
          ..add(MetricsRecipientBehaviourBuckets.serializer)
          ..add(MetricsSender.serializer)
          ..add(MetricsSenderResponse.serializer)
          ..add(MetricsVolume.serializer)
          ..add(MetricsVolumeBuckets.serializer)
          ..add(NewKey.serializer)
          ..add(PatchCustomTrackingDomainRequest.serializer)
          ..add(PatchCustomTrackingDomainRequestStatusEnum.serializer)
          ..add(Personalization.serializer)
          ..add(PostCustomTrackingDomainRequest.serializer)
          ..add(PostCustomTrackingDomainRequestScopeEnum.serializer)
          ..add(SMTPPassword.serializer)
          ..add(SendResult.serializer)
          ..add(SendResultStatusEnum.serializer)
          ..add(SendResults.serializer)
          ..add(SenderDomainResult.serializer)
          ..add(SenderDomainResultA.serializer)
          ..add(SenderDomainResultAVerdictEnum.serializer)
          ..add(SenderDomainResultMx.serializer)
          ..add(SenderDomainResultMxVerdictEnum.serializer)
          ..add(SenderDomainResultVerdictEnum.serializer)
          ..add(SpfResult.serializer)
          ..add(SpfResultVerdictEnum.serializer)
          ..add(SubAccountData.serializer)
          ..add(SubAccountDetails.serializer)
          ..add(SuppressionEntry.serializer)
          ..add(SuppressionEntryResponse.serializer)
          ..add(SuppressionEntryResponseSource_Enum.serializer)
          ..add(SuppressionEntryResponseSuppressionTypesEnum.serializer)
          ..add(SuppressionEntrySuppressionTypesEnum.serializer)
          ..add(SuppressionListInput.serializer)
          ..add(SuppressionListResponse.serializer)
          ..add(UsageStats.serializer)
          ..add(Webhook.serializer)
          ..add(WebhookBatch.serializer)
          ..add(WebhookBatchDuration.serializer)
          ..add(WebhookBatchDurationUnitEnum.serializer)
          ..add(WebhookBatchResult.serializer)
          ..add(WebhookBatchStatusEnum.serializer)
          ..add(WebhookResendResponse.serializer)
          ..add(WebhookResponse.serializer)
          ..add(WebhookValidationRequestBody.serializer)
          ..add(WebhookValidationResult.serializer)
          ..add(WebhookValidationResultResultEnum.serializer)
          ..add(WebhookValidationResults.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Attachment)]),
            () => ListBuilder<Attachment>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ContentItem)]),
            () => ListBuilder<ContentItem>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Personalization)]),
            () => ListBuilder<Personalization>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(CustomTrackingDomain),
            ]),
            () => ListBuilder<CustomTrackingDomain>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DKIMKeyInfo)]),
            () => ListBuilder<DKIMKeyInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DkimResult)]),
            () => ListBuilder<DkimResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DkimSetting)]),
            () => ListBuilder<DkimSetting>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EmailAddress)]),
            () => ListBuilder<EmailAddress>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EmailAddress)]),
            () => ListBuilder<EmailAddress>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EmailAddress)]),
            () => ListBuilder<EmailAddress>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsBucket)]),
            () => ListBuilder<MetricsBucket>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MetricsSender)]),
            () => ListBuilder<MetricsSender>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SendResult)]),
            () => ListBuilder<SendResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SuppressionEntry)]),
            () => ListBuilder<SuppressionEntry>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(SuppressionEntryResponse),
            ]),
            () => ListBuilder<SuppressionEntryResponse>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(SuppressionEntryResponseSuppressionTypesEnum),
            ]),
            () => ListBuilder<SuppressionEntryResponseSuppressionTypesEnum>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(SuppressionEntrySuppressionTypesEnum),
            ]),
            () => ListBuilder<SuppressionEntrySuppressionTypesEnum>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(WebhookBatch)]),
            () => ListBuilder<WebhookBatch>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(WebhookValidationResult),
            ]),
            () => ListBuilder<WebhookValidationResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(DKIMDnsRecord),
            ]),
            () => ListBuilder<DKIMDnsRecord?>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

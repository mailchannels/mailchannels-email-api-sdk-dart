//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/personalization.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/email_address.dart';
import 'package:mailchannels_email_api/src/model/content_item.dart';
import 'package:mailchannels_email_api/src/model/mail_send_body_tracking_settings.dart';
import 'package:mailchannels_email_api/src/model/attachment.dart';
import 'package:mailchannels_email_api/src/model/mail_send_body_unsubscribe_settings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mail_send_body.g.dart';

/// MailSendBody
///
/// Properties:
/// * [attachments] 
/// * [campaignId] - The campaign identifier. If specified, this ID will be included in all relevant webhooks. It can be up to 48 UTF-8 characters long and must not contain spaces. 
/// * [content] 
/// * [dkimDomain] - If set, you must also provide the matching dkim_selector. 
/// * [dkimPrivateKey] - Encoded in Base64. If set, you must also provide the matching dkim_domain and dkim_selector. 
/// * [dkimSelector] - If set without a matching dkim_domain, the domain will be taken from the `from` email address. 
/// * [envelopeFrom] 
/// * [from] 
/// * [headers] - A JSON object containing key-value pairs, where both keys (header names) and values must be strings. These pairs represent custom headers to be substituted. Please note the following restrictions and behavior: - Reserved headers: The following headers cannot be modified:   - Authentication-Results   - BCC   - CC   - Content-Transfer-Encoding   - Content-Type   - DKIM-Signature   - From   - Message-ID   - Received   - Reply-To   - Subject   - To - Header precedence: If a header is defined in both the personalizations object and the root headers, the value from personalizations will be used. - Case sensitivity: Headers are treated as case-insensitive. If multiple headers differ only by case, only one will be used, with no guarantee of which one. 
/// * [personalizations] 
/// * [replyTo] 
/// * [subject] 
/// * [trackingSettings] 
/// * [transactional] - Mark these messages as transactional or non-transactional. In order for a message to be marked as non-transactional, it must have exactly one recipient per personalization, and it must be DKIM signed. 400 Bad Request will be returned if there are more than one recipient in any personalization for non-transactional messages. If a message is marked as non-transactional, it changes the sending process as follows:   * List-Unsubscribe and List-Unsubscribe-Post headers will be added, unless you supply your own List-Unsubscribe header, in which case yours is used and neither is added. 
/// * [unsubscribeSettings] 
@BuiltValue()
abstract class MailSendBody implements Built<MailSendBody, MailSendBodyBuilder> {
  @BuiltValueField(wireName: r'attachments')
  BuiltList<Attachment>? get attachments;

  /// The campaign identifier. If specified, this ID will be included in all relevant webhooks. It can be up to 48 UTF-8 characters long and must not contain spaces. 
  @BuiltValueField(wireName: r'campaign_id')
  String? get campaignId;

  @BuiltValueField(wireName: r'content')
  BuiltList<ContentItem> get content;

  /// If set, you must also provide the matching dkim_selector. 
  @BuiltValueField(wireName: r'dkim_domain')
  String? get dkimDomain;

  /// Encoded in Base64. If set, you must also provide the matching dkim_domain and dkim_selector. 
  @BuiltValueField(wireName: r'dkim_private_key')
  String? get dkimPrivateKey;

  /// If set without a matching dkim_domain, the domain will be taken from the `from` email address. 
  @BuiltValueField(wireName: r'dkim_selector')
  String? get dkimSelector;

  @BuiltValueField(wireName: r'envelope_from')
  EmailAddress? get envelopeFrom;

  @BuiltValueField(wireName: r'from')
  EmailAddress get from;

  /// A JSON object containing key-value pairs, where both keys (header names) and values must be strings. These pairs represent custom headers to be substituted. Please note the following restrictions and behavior: - Reserved headers: The following headers cannot be modified:   - Authentication-Results   - BCC   - CC   - Content-Transfer-Encoding   - Content-Type   - DKIM-Signature   - From   - Message-ID   - Received   - Reply-To   - Subject   - To - Header precedence: If a header is defined in both the personalizations object and the root headers, the value from personalizations will be used. - Case sensitivity: Headers are treated as case-insensitive. If multiple headers differ only by case, only one will be used, with no guarantee of which one. 
  @BuiltValueField(wireName: r'headers')
  BuiltMap<String, String>? get headers;

  @BuiltValueField(wireName: r'personalizations')
  BuiltList<Personalization> get personalizations;

  @BuiltValueField(wireName: r'reply_to')
  EmailAddress? get replyTo;

  @BuiltValueField(wireName: r'subject')
  String get subject;

  @BuiltValueField(wireName: r'tracking_settings')
  MailSendBodyTrackingSettings? get trackingSettings;

  /// Mark these messages as transactional or non-transactional. In order for a message to be marked as non-transactional, it must have exactly one recipient per personalization, and it must be DKIM signed. 400 Bad Request will be returned if there are more than one recipient in any personalization for non-transactional messages. If a message is marked as non-transactional, it changes the sending process as follows:   * List-Unsubscribe and List-Unsubscribe-Post headers will be added, unless you supply your own List-Unsubscribe header, in which case yours is used and neither is added. 
  @BuiltValueField(wireName: r'transactional')
  bool? get transactional;

  @BuiltValueField(wireName: r'unsubscribe_settings')
  MailSendBodyUnsubscribeSettings? get unsubscribeSettings;

  @override
  String toString() => 'MailSendBody { [REDACTED] }';

  MailSendBody._();

  factory MailSendBody([void updates(MailSendBodyBuilder b)]) = _$MailSendBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MailSendBodyBuilder b) => b
      ..transactional = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<MailSendBody> get serializer => _$MailSendBodySerializer();
}

class _$MailSendBodySerializer implements PrimitiveSerializer<MailSendBody> {
  @override
  final Iterable<Type> types = const [MailSendBody, _$MailSendBody];

  @override
  final String wireName = r'MailSendBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MailSendBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [FullType(Attachment)]),
      );
    }
    if (object.campaignId != null) {
      yield r'campaign_id';
      yield serializers.serialize(
        object.campaignId,
        specifiedType: const FullType(String),
      );
    }
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(BuiltList, [FullType(ContentItem)]),
    );
    if (object.dkimDomain != null) {
      yield r'dkim_domain';
      yield serializers.serialize(
        object.dkimDomain,
        specifiedType: const FullType(String),
      );
    }
    if (object.dkimPrivateKey != null) {
      yield r'dkim_private_key';
      yield serializers.serialize(
        object.dkimPrivateKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.dkimSelector != null) {
      yield r'dkim_selector';
      yield serializers.serialize(
        object.dkimSelector,
        specifiedType: const FullType(String),
      );
    }
    if (object.envelopeFrom != null) {
      yield r'envelope_from';
      yield serializers.serialize(
        object.envelopeFrom,
        specifiedType: const FullType(EmailAddress),
      );
    }
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(EmailAddress),
    );
    if (object.headers != null) {
      yield r'headers';
      yield serializers.serialize(
        object.headers,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    yield r'personalizations';
    yield serializers.serialize(
      object.personalizations,
      specifiedType: const FullType(BuiltList, [FullType(Personalization)]),
    );
    if (object.replyTo != null) {
      yield r'reply_to';
      yield serializers.serialize(
        object.replyTo,
        specifiedType: const FullType(EmailAddress),
      );
    }
    yield r'subject';
    yield serializers.serialize(
      object.subject,
      specifiedType: const FullType(String),
    );
    if (object.trackingSettings != null) {
      yield r'tracking_settings';
      yield serializers.serialize(
        object.trackingSettings,
        specifiedType: const FullType(MailSendBodyTrackingSettings),
      );
    }
    if (object.transactional != null) {
      yield r'transactional';
      yield serializers.serialize(
        object.transactional,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.unsubscribeSettings != null) {
      yield r'unsubscribe_settings';
      yield serializers.serialize(
        object.unsubscribeSettings,
        specifiedType: const FullType(MailSendBodyUnsubscribeSettings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MailSendBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MailSendBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Attachment)]),
          ) as BuiltList<Attachment>?;
          if (valueDes == null) continue;
          result.attachments.replace(valueDes);
          break;
        case r'campaign_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.campaignId = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ContentItem)]),
          ) as BuiltList<ContentItem>;
          result.content.replace(valueDes);
          break;
        case r'dkim_domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dkimDomain = valueDes;
          break;
        case r'dkim_private_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dkimPrivateKey = valueDes;
          break;
        case r'dkim_selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dkimSelector = valueDes;
          break;
        case r'envelope_from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EmailAddress),
          ) as EmailAddress?;
          if (valueDes == null) continue;
          result.envelopeFrom.replace(valueDes);
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EmailAddress),
          ) as EmailAddress;
          result.from.replace(valueDes);
          break;
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.headers.replace(valueDes);
          break;
        case r'personalizations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Personalization)]),
          ) as BuiltList<Personalization>;
          result.personalizations.replace(valueDes);
          break;
        case r'reply_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EmailAddress),
          ) as EmailAddress?;
          if (valueDes == null) continue;
          result.replyTo.replace(valueDes);
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'tracking_settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MailSendBodyTrackingSettings),
          ) as MailSendBodyTrackingSettings?;
          if (valueDes == null) continue;
          result.trackingSettings.replace(valueDes);
          break;
        case r'transactional':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.transactional = valueDes;
          break;
        case r'unsubscribe_settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MailSendBodyUnsubscribeSettings),
          ) as MailSendBodyUnsubscribeSettings?;
          if (valueDes == null) continue;
          result.unsubscribeSettings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MailSendBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MailSendBodyBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/dkim_setting.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_domain_body.g.dart';

/// CheckDomainBody
///
/// Properties:
/// * [dkimSettings] - Each item may include DKIM domain, selector and private key. Up to 10 items are allowed. The absence or presence of these fields affects how DKIM settings are validated: 1. If dkim_domain, dkim_selector, and dkim_private_key are all present, verify using the provided domain, selector, and key. 2. If dkim_domain and dkim_selector are present, use the stored private key for the given domain and selector. 3. If only dkim_domain is present, use all stored keys for the given domain. 4. If none are present, use all stored keys for the domain provided in the `domain` field of the request. 5. If dkim_private_key is present, dkim_selector must be present. 6. If dkim_selector is present and dkim_domain is not, the domain will be taken from the `domain` field of the request. 
/// * [domain] - Domain used for sending emails. If dkim_settings are not provided, or dkim_settings are provided with no dkim_domain, the stored dkim settings for this domain will be used. 
/// * [envelopeFromDomain] - Optional envelope-from domain. During message delivery, SPF and Domain Lockdown verification are evaluated  against the envelope sender domain. If your envelope-from domain differs from the domain used for sending messages, provide it here to ensure both checks are run against the correct domain. Otherwise, SPF or Domain Lockdown failures may cause message delivery to fail. 
/// * [senderId] - Used exclusively for [Domain Lockdown](https://support.mailchannels.com/hc/en-us/articles/16918954360845-Secure-your-domain-name-against-spoofing-with-Domain-Lockdown) verification. If you're not using `senderid` to associate your domain with your account, you can disregard this field. The corresponding value is included in the X-MailChannels-SenderId header of emails sent via MailChannels. 
@BuiltValue()
abstract class CheckDomainBody implements Built<CheckDomainBody, CheckDomainBodyBuilder> {
  /// Each item may include DKIM domain, selector and private key. Up to 10 items are allowed. The absence or presence of these fields affects how DKIM settings are validated: 1. If dkim_domain, dkim_selector, and dkim_private_key are all present, verify using the provided domain, selector, and key. 2. If dkim_domain and dkim_selector are present, use the stored private key for the given domain and selector. 3. If only dkim_domain is present, use all stored keys for the given domain. 4. If none are present, use all stored keys for the domain provided in the `domain` field of the request. 5. If dkim_private_key is present, dkim_selector must be present. 6. If dkim_selector is present and dkim_domain is not, the domain will be taken from the `domain` field of the request. 
  @BuiltValueField(wireName: r'dkim_settings')
  BuiltList<DkimSetting>? get dkimSettings;

  /// Domain used for sending emails. If dkim_settings are not provided, or dkim_settings are provided with no dkim_domain, the stored dkim settings for this domain will be used. 
  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// Optional envelope-from domain. During message delivery, SPF and Domain Lockdown verification are evaluated  against the envelope sender domain. If your envelope-from domain differs from the domain used for sending messages, provide it here to ensure both checks are run against the correct domain. Otherwise, SPF or Domain Lockdown failures may cause message delivery to fail. 
  @BuiltValueField(wireName: r'envelope_from_domain')
  String? get envelopeFromDomain;

  /// Used exclusively for [Domain Lockdown](https://support.mailchannels.com/hc/en-us/articles/16918954360845-Secure-your-domain-name-against-spoofing-with-Domain-Lockdown) verification. If you're not using `senderid` to associate your domain with your account, you can disregard this field. The corresponding value is included in the X-MailChannels-SenderId header of emails sent via MailChannels. 
  @BuiltValueField(wireName: r'sender_id')
  String? get senderId;

  @override
  String toString() => 'CheckDomainBody { [REDACTED] }';

  CheckDomainBody._();

  factory CheckDomainBody([void updates(CheckDomainBodyBuilder b)]) = _$CheckDomainBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckDomainBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckDomainBody> get serializer => _$CheckDomainBodySerializer();
}

class _$CheckDomainBodySerializer implements PrimitiveSerializer<CheckDomainBody> {
  @override
  final Iterable<Type> types = const [CheckDomainBody, _$CheckDomainBody];

  @override
  final String wireName = r'CheckDomainBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckDomainBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dkimSettings != null) {
      yield r'dkim_settings';
      yield serializers.serialize(
        object.dkimSettings,
        specifiedType: const FullType(BuiltList, [FullType(DkimSetting)]),
      );
    }
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    if (object.envelopeFromDomain != null) {
      yield r'envelope_from_domain';
      yield serializers.serialize(
        object.envelopeFromDomain,
        specifiedType: const FullType(String),
      );
    }
    if (object.senderId != null) {
      yield r'sender_id';
      yield serializers.serialize(
        object.senderId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckDomainBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckDomainBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dkim_settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DkimSetting)]),
          ) as BuiltList<DkimSetting>?;
          if (valueDes == null) continue;
          result.dkimSettings.replace(valueDes);
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'envelope_from_domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.envelopeFromDomain = valueDes;
          break;
        case r'sender_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.senderId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckDomainBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckDomainBodyBuilder();
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



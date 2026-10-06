//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/email_address.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'personalization.g.dart';

/// Personalization
///
/// Properties:
/// * [bcc] 
/// * [cc] 
/// * [dkimDomain] - If set, you must also provide the matching dkim_selector. 
/// * [dkimPrivateKey] - Encoded in Base64. If set, you must also provide the matching dkim_domain and dkim_selector. 
/// * [dkimSelector] - If set without a matching dkim_domain, the domain will be taken from the `from` email address. 
/// * [dynamicTemplateData] - A JSON object containing key-value pairs of variables to set for template rendering. Keys must be strings, and values can be one of the following types: * string * boolean * number * list, whose values are all of permitted types * map, whose keys must be strings, and whose values are all of permitted types 
/// * [envelopeFrom] 
/// * [from] 
/// * [headers] - A JSON object containing key-value pairs, where both keys (header names) and values must be strings. These pairs represent custom headers to be substituted. Please note the following restrictions and behavior: - Reserved headers: The following headers cannot be modified:   - Authentication-Results   - BCC   - CC   - Content-Transfer-Encoding   - Content-Type   - DKIM-Signature   - From   - Message-ID   - Received   - Reply-To   - Subject   - To - Header precedence: If a header is defined in both the personalizations object and the root headers, the value from personalizations will be used. - Case sensitivity: Headers are treated as case-insensitive. If multiple headers differ only by case, only one will be used, with no guarantee of which one. 
/// * [replyTo] 
/// * [subject] 
/// * [to] 
@BuiltValue()
abstract class Personalization implements Built<Personalization, PersonalizationBuilder> {
  @BuiltValueField(wireName: r'bcc')
  BuiltList<EmailAddress>? get bcc;

  @BuiltValueField(wireName: r'cc')
  BuiltList<EmailAddress>? get cc;

  /// If set, you must also provide the matching dkim_selector. 
  @BuiltValueField(wireName: r'dkim_domain')
  String? get dkimDomain;

  /// Encoded in Base64. If set, you must also provide the matching dkim_domain and dkim_selector. 
  @BuiltValueField(wireName: r'dkim_private_key')
  String? get dkimPrivateKey;

  /// If set without a matching dkim_domain, the domain will be taken from the `from` email address. 
  @BuiltValueField(wireName: r'dkim_selector')
  String? get dkimSelector;

  /// A JSON object containing key-value pairs of variables to set for template rendering. Keys must be strings, and values can be one of the following types: * string * boolean * number * list, whose values are all of permitted types * map, whose keys must be strings, and whose values are all of permitted types 
  @BuiltValueField(wireName: r'dynamic_template_data')
  JsonObject? get dynamicTemplateData;

  @BuiltValueField(wireName: r'envelope_from')
  EmailAddress? get envelopeFrom;

  @BuiltValueField(wireName: r'from')
  EmailAddress? get from;

  /// A JSON object containing key-value pairs, where both keys (header names) and values must be strings. These pairs represent custom headers to be substituted. Please note the following restrictions and behavior: - Reserved headers: The following headers cannot be modified:   - Authentication-Results   - BCC   - CC   - Content-Transfer-Encoding   - Content-Type   - DKIM-Signature   - From   - Message-ID   - Received   - Reply-To   - Subject   - To - Header precedence: If a header is defined in both the personalizations object and the root headers, the value from personalizations will be used. - Case sensitivity: Headers are treated as case-insensitive. If multiple headers differ only by case, only one will be used, with no guarantee of which one. 
  @BuiltValueField(wireName: r'headers')
  BuiltMap<String, String>? get headers;

  @BuiltValueField(wireName: r'reply_to')
  EmailAddress? get replyTo;

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  @BuiltValueField(wireName: r'to')
  BuiltList<EmailAddress> get to;

  @override
  String toString() => 'Personalization { [REDACTED] }';

  Personalization._();

  factory Personalization([void updates(PersonalizationBuilder b)]) = _$Personalization;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersonalizationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Personalization> get serializer => _$PersonalizationSerializer();
}

class _$PersonalizationSerializer implements PrimitiveSerializer<Personalization> {
  @override
  final Iterable<Type> types = const [Personalization, _$Personalization];

  @override
  final String wireName = r'Personalization';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Personalization object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bcc != null) {
      yield r'bcc';
      yield serializers.serialize(
        object.bcc,
        specifiedType: const FullType(BuiltList, [FullType(EmailAddress)]),
      );
    }
    if (object.cc != null) {
      yield r'cc';
      yield serializers.serialize(
        object.cc,
        specifiedType: const FullType(BuiltList, [FullType(EmailAddress)]),
      );
    }
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
    if (object.dynamicTemplateData != null) {
      yield r'dynamic_template_data';
      yield serializers.serialize(
        object.dynamicTemplateData,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.envelopeFrom != null) {
      yield r'envelope_from';
      yield serializers.serialize(
        object.envelopeFrom,
        specifiedType: const FullType(EmailAddress),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(EmailAddress),
      );
    }
    if (object.headers != null) {
      yield r'headers';
      yield serializers.serialize(
        object.headers,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.replyTo != null) {
      yield r'reply_to';
      yield serializers.serialize(
        object.replyTo,
        specifiedType: const FullType(EmailAddress),
      );
    }
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(BuiltList, [FullType(EmailAddress)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Personalization object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PersonalizationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bcc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EmailAddress)]),
          ) as BuiltList<EmailAddress>?;
          if (valueDes == null) continue;
          result.bcc.replace(valueDes);
          break;
        case r'cc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EmailAddress)]),
          ) as BuiltList<EmailAddress>?;
          if (valueDes == null) continue;
          result.cc.replace(valueDes);
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
        case r'dynamic_template_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.dynamicTemplateData = valueDes;
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
            specifiedType: const FullType.nullable(EmailAddress),
          ) as EmailAddress?;
          if (valueDes == null) continue;
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subject = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(EmailAddress)]),
          ) as BuiltList<EmailAddress>;
          result.to.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Personalization deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersonalizationBuilder();
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



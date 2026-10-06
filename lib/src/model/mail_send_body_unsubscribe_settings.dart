//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mail_send_body_unsubscribe_settings.g.dart';

/// Settings to customize the unsubscribe experience for the message. 
///
/// Properties:
/// * [customDomainName] - The name of a configured active unsubscribe tracking domain. When specified, unsubscribe links will use this domain instead of the default MailChannels domain. The domain must be registered in your account and have an active status. 
@BuiltValue()
abstract class MailSendBodyUnsubscribeSettings implements Built<MailSendBodyUnsubscribeSettings, MailSendBodyUnsubscribeSettingsBuilder> {
  /// The name of a configured active unsubscribe tracking domain. When specified, unsubscribe links will use this domain instead of the default MailChannels domain. The domain must be registered in your account and have an active status. 
  @BuiltValueField(wireName: r'custom_domain_name')
  String? get customDomainName;

  @override
  String toString() => 'MailSendBodyUnsubscribeSettings { [REDACTED] }';

  MailSendBodyUnsubscribeSettings._();

  factory MailSendBodyUnsubscribeSettings([void updates(MailSendBodyUnsubscribeSettingsBuilder b)]) = _$MailSendBodyUnsubscribeSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MailSendBodyUnsubscribeSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MailSendBodyUnsubscribeSettings> get serializer => _$MailSendBodyUnsubscribeSettingsSerializer();
}

class _$MailSendBodyUnsubscribeSettingsSerializer implements PrimitiveSerializer<MailSendBodyUnsubscribeSettings> {
  @override
  final Iterable<Type> types = const [MailSendBodyUnsubscribeSettings, _$MailSendBodyUnsubscribeSettings];

  @override
  final String wireName = r'MailSendBodyUnsubscribeSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MailSendBodyUnsubscribeSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customDomainName != null) {
      yield r'custom_domain_name';
      yield serializers.serialize(
        object.customDomainName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MailSendBodyUnsubscribeSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MailSendBodyUnsubscribeSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'custom_domain_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customDomainName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MailSendBodyUnsubscribeSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MailSendBodyUnsubscribeSettingsBuilder();
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



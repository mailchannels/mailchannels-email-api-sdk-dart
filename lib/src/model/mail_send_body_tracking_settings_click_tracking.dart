//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mail_send_body_tracking_settings_click_tracking.g.dart';

/// MailSendBodyTrackingSettingsClickTracking
///
/// Properties:
/// * [customDomainName] - The name of a configured active click tracking domain. When specified, click tracking links will use this domain instead of the default MailChannels domain. The domain must be registered in your account and have an active status. 
/// * [enable] - Setting to enable or disable click tracking for the message. This feature allows you to track when a recipient clicks a link in your email. 
@BuiltValue()
abstract class MailSendBodyTrackingSettingsClickTracking implements Built<MailSendBodyTrackingSettingsClickTracking, MailSendBodyTrackingSettingsClickTrackingBuilder> {
  /// The name of a configured active click tracking domain. When specified, click tracking links will use this domain instead of the default MailChannels domain. The domain must be registered in your account and have an active status. 
  @BuiltValueField(wireName: r'custom_domain_name')
  String? get customDomainName;

  /// Setting to enable or disable click tracking for the message. This feature allows you to track when a recipient clicks a link in your email. 
  @BuiltValueField(wireName: r'enable')
  bool? get enable;

  @override
  String toString() => 'MailSendBodyTrackingSettingsClickTracking { [REDACTED] }';

  MailSendBodyTrackingSettingsClickTracking._();

  factory MailSendBodyTrackingSettingsClickTracking([void updates(MailSendBodyTrackingSettingsClickTrackingBuilder b)]) = _$MailSendBodyTrackingSettingsClickTracking;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MailSendBodyTrackingSettingsClickTrackingBuilder b) => b
      ..enable = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<MailSendBodyTrackingSettingsClickTracking> get serializer => _$MailSendBodyTrackingSettingsClickTrackingSerializer();
}

class _$MailSendBodyTrackingSettingsClickTrackingSerializer implements PrimitiveSerializer<MailSendBodyTrackingSettingsClickTracking> {
  @override
  final Iterable<Type> types = const [MailSendBodyTrackingSettingsClickTracking, _$MailSendBodyTrackingSettingsClickTracking];

  @override
  final String wireName = r'MailSendBodyTrackingSettingsClickTracking';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MailSendBodyTrackingSettingsClickTracking object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customDomainName != null) {
      yield r'custom_domain_name';
      yield serializers.serialize(
        object.customDomainName,
        specifiedType: const FullType(String),
      );
    }
    if (object.enable != null) {
      yield r'enable';
      yield serializers.serialize(
        object.enable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MailSendBodyTrackingSettingsClickTracking object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MailSendBodyTrackingSettingsClickTrackingBuilder result,
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
        case r'enable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MailSendBodyTrackingSettingsClickTracking deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MailSendBodyTrackingSettingsClickTrackingBuilder();
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



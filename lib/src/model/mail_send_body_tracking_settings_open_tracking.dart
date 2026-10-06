//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mail_send_body_tracking_settings_open_tracking.g.dart';

/// MailSendBodyTrackingSettingsOpenTracking
///
/// Properties:
/// * [customDomainName] - The name of a configured active open tracking domain. When specified, the open tracking pixel will use this domain instead of the default MailChannels domain. The domain must be registered in your account and have an active status. 
/// * [enable] - Setting to enable or disable open tracking for the message. This feature allows you to track when a recipient opens your email. Please note that some email clients may not support open tracking. 
@BuiltValue()
abstract class MailSendBodyTrackingSettingsOpenTracking implements Built<MailSendBodyTrackingSettingsOpenTracking, MailSendBodyTrackingSettingsOpenTrackingBuilder> {
  /// The name of a configured active open tracking domain. When specified, the open tracking pixel will use this domain instead of the default MailChannels domain. The domain must be registered in your account and have an active status. 
  @BuiltValueField(wireName: r'custom_domain_name')
  String? get customDomainName;

  /// Setting to enable or disable open tracking for the message. This feature allows you to track when a recipient opens your email. Please note that some email clients may not support open tracking. 
  @BuiltValueField(wireName: r'enable')
  bool? get enable;

  @override
  String toString() => 'MailSendBodyTrackingSettingsOpenTracking { [REDACTED] }';

  MailSendBodyTrackingSettingsOpenTracking._();

  factory MailSendBodyTrackingSettingsOpenTracking([void updates(MailSendBodyTrackingSettingsOpenTrackingBuilder b)]) = _$MailSendBodyTrackingSettingsOpenTracking;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MailSendBodyTrackingSettingsOpenTrackingBuilder b) => b
      ..enable = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<MailSendBodyTrackingSettingsOpenTracking> get serializer => _$MailSendBodyTrackingSettingsOpenTrackingSerializer();
}

class _$MailSendBodyTrackingSettingsOpenTrackingSerializer implements PrimitiveSerializer<MailSendBodyTrackingSettingsOpenTracking> {
  @override
  final Iterable<Type> types = const [MailSendBodyTrackingSettingsOpenTracking, _$MailSendBodyTrackingSettingsOpenTracking];

  @override
  final String wireName = r'MailSendBodyTrackingSettingsOpenTracking';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MailSendBodyTrackingSettingsOpenTracking object, {
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
    MailSendBodyTrackingSettingsOpenTracking object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MailSendBodyTrackingSettingsOpenTrackingBuilder result,
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
  MailSendBodyTrackingSettingsOpenTracking deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MailSendBodyTrackingSettingsOpenTrackingBuilder();
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



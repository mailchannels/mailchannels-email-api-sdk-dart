//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/mail_send_body_tracking_settings_open_tracking.dart';
import 'package:mailchannels_email_api/src/model/mail_send_body_tracking_settings_click_tracking.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mail_send_body_tracking_settings.g.dart';

/// Settings to adjust open and click tracking for the message. Please note that enabling tracking for your messages requires a subscription that supports open and click tracking. 
///
/// Properties:
/// * [clickTracking] 
/// * [openTracking] 
@BuiltValue()
abstract class MailSendBodyTrackingSettings implements Built<MailSendBodyTrackingSettings, MailSendBodyTrackingSettingsBuilder> {
  @BuiltValueField(wireName: r'click_tracking')
  MailSendBodyTrackingSettingsClickTracking? get clickTracking;

  @BuiltValueField(wireName: r'open_tracking')
  MailSendBodyTrackingSettingsOpenTracking? get openTracking;

  @override
  String toString() => 'MailSendBodyTrackingSettings { [REDACTED] }';

  MailSendBodyTrackingSettings._();

  factory MailSendBodyTrackingSettings([void updates(MailSendBodyTrackingSettingsBuilder b)]) = _$MailSendBodyTrackingSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MailSendBodyTrackingSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MailSendBodyTrackingSettings> get serializer => _$MailSendBodyTrackingSettingsSerializer();
}

class _$MailSendBodyTrackingSettingsSerializer implements PrimitiveSerializer<MailSendBodyTrackingSettings> {
  @override
  final Iterable<Type> types = const [MailSendBodyTrackingSettings, _$MailSendBodyTrackingSettings];

  @override
  final String wireName = r'MailSendBodyTrackingSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MailSendBodyTrackingSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.clickTracking != null) {
      yield r'click_tracking';
      yield serializers.serialize(
        object.clickTracking,
        specifiedType: const FullType(MailSendBodyTrackingSettingsClickTracking),
      );
    }
    if (object.openTracking != null) {
      yield r'open_tracking';
      yield serializers.serialize(
        object.openTracking,
        specifiedType: const FullType(MailSendBodyTrackingSettingsOpenTracking),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MailSendBodyTrackingSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MailSendBodyTrackingSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'click_tracking':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MailSendBodyTrackingSettingsClickTracking),
          ) as MailSendBodyTrackingSettingsClickTracking?;
          if (valueDes == null) continue;
          result.clickTracking.replace(valueDes);
          break;
        case r'open_tracking':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MailSendBodyTrackingSettingsOpenTracking),
          ) as MailSendBodyTrackingSettingsOpenTracking?;
          if (valueDes == null) continue;
          result.openTracking.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MailSendBodyTrackingSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MailSendBodyTrackingSettingsBuilder();
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



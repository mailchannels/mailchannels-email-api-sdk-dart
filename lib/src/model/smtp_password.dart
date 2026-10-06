//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'smtp_password.g.dart';

/// SMTPPassword
///
/// Properties:
/// * [enabled] - Whether the SMTP password is enabled
/// * [id] - The SMTP password ID for the sub-account
/// * [smtpPassword] - SMTP password for the sub-account
@BuiltValue()
abstract class SMTPPassword implements Built<SMTPPassword, SMTPPasswordBuilder> {
  /// Whether the SMTP password is enabled
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// The SMTP password ID for the sub-account
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// SMTP password for the sub-account
  @BuiltValueField(wireName: r'smtp_password')
  String? get smtpPassword;

  @override
  String toString() => 'SMTPPassword { [REDACTED] }';

  SMTPPassword._();

  factory SMTPPassword([void updates(SMTPPasswordBuilder b)]) = _$SMTPPassword;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SMTPPasswordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SMTPPassword> get serializer => _$SMTPPasswordSerializer();
}

class _$SMTPPasswordSerializer implements PrimitiveSerializer<SMTPPassword> {
  @override
  final Iterable<Type> types = const [SMTPPassword, _$SMTPPassword];

  @override
  final String wireName = r'SMTPPassword';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SMTPPassword object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.smtpPassword != null) {
      yield r'smtp_password';
      yield serializers.serialize(
        object.smtpPassword,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SMTPPassword object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SMTPPasswordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'smtp_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.smtpPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SMTPPassword deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SMTPPasswordBuilder();
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



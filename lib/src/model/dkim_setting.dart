//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dkim_setting.g.dart';

/// Domain, selector and private key for DKIM signing. 
///
/// Properties:
/// * [dkimDomain] - The Signing Domain Identifier; the d= field in a DKIM-Signature header 
/// * [dkimPrivateKey] - Encoded in Base64. 
/// * [dkimSelector] 
@BuiltValue()
abstract class DkimSetting implements Built<DkimSetting, DkimSettingBuilder> {
  /// The Signing Domain Identifier; the d= field in a DKIM-Signature header 
  @BuiltValueField(wireName: r'dkim_domain')
  String? get dkimDomain;

  /// Encoded in Base64. 
  @BuiltValueField(wireName: r'dkim_private_key')
  String? get dkimPrivateKey;

  @BuiltValueField(wireName: r'dkim_selector')
  String? get dkimSelector;

  @override
  String toString() => 'DkimSetting { [REDACTED] }';

  DkimSetting._();

  factory DkimSetting([void updates(DkimSettingBuilder b)]) = _$DkimSetting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DkimSettingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DkimSetting> get serializer => _$DkimSettingSerializer();
}

class _$DkimSettingSerializer implements PrimitiveSerializer<DkimSetting> {
  @override
  final Iterable<Type> types = const [DkimSetting, _$DkimSetting];

  @override
  final String wireName = r'DkimSetting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DkimSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DkimSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DkimSettingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DkimSetting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DkimSettingBuilder();
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



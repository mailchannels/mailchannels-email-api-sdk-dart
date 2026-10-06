//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'limit_input.g.dart';

/// LimitInput
///
/// Properties:
/// * [sends] 
@BuiltValue()
abstract class LimitInput implements Built<LimitInput, LimitInputBuilder> {
  @BuiltValueField(wireName: r'sends')
  int get sends;

  @override
  String toString() => 'LimitInput { [REDACTED] }';

  LimitInput._();

  factory LimitInput([void updates(LimitInputBuilder b)]) = _$LimitInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LimitInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LimitInput> get serializer => _$LimitInputSerializer();
}

class _$LimitInputSerializer implements PrimitiveSerializer<LimitInput> {
  @override
  final Iterable<Type> types = const [LimitInput, _$LimitInput];

  @override
  final String wireName = r'LimitInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LimitInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sends';
    yield serializers.serialize(
      object.sends,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LimitInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LimitInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sends':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sends = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LimitInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LimitInputBuilder();
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



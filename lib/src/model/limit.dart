//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'limit.g.dart';

/// Limit
///
/// Properties:
/// * [sends] 
@BuiltValue()
abstract class Limit implements Built<Limit, LimitBuilder> {
  @BuiltValueField(wireName: r'sends')
  int get sends;

  @override
  String toString() => 'Limit { [REDACTED] }';

  Limit._();

  factory Limit([void updates(LimitBuilder b)]) = _$Limit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LimitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Limit> get serializer => _$LimitSerializer();
}

class _$LimitSerializer implements PrimitiveSerializer<Limit> {
  @override
  final Iterable<Type> types = const [Limit, _$Limit];

  @override
  final String wireName = r'Limit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Limit object, {
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
    Limit object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LimitBuilder result,
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
  Limit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LimitBuilder();
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



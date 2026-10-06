//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'new_key.g.dart';

/// NewKey
///
/// Properties:
/// * [selector] - Selector for the new key pair
@BuiltValue()
abstract class NewKey implements Built<NewKey, NewKeyBuilder> {
  /// Selector for the new key pair
  @BuiltValueField(wireName: r'selector')
  String get selector;

  @override
  String toString() => 'NewKey { [REDACTED] }';

  NewKey._();

  factory NewKey([void updates(NewKeyBuilder b)]) = _$NewKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewKey> get serializer => _$NewKeySerializer();
}

class _$NewKeySerializer implements PrimitiveSerializer<NewKey> {
  @override
  final Iterable<Type> types = const [NewKey, _$NewKey];

  @override
  final String wireName = r'NewKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewKey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'selector';
    yield serializers.serialize(
      object.selector,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NewKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NewKeyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selector = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewKeyBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key.g.dart';

/// Key
///
/// Properties:
/// * [id] 
/// * [key] - The public key used to verify webhook signatures
@BuiltValue()
abstract class Key implements Built<Key, KeyBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The public key used to verify webhook signatures
  @BuiltValueField(wireName: r'key')
  String get key;

  @override
  String toString() => 'Key { [REDACTED] }';

  Key._();

  factory Key([void updates(KeyBuilder b)]) = _$Key;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Key> get serializer => _$KeySerializer();
}

class _$KeySerializer implements PrimitiveSerializer<Key> {
  @override
  final Iterable<Type> types = const [Key, _$Key];

  @override
  final String wireName = r'Key';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Key object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Key object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Key deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyBuilder();
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



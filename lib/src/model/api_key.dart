//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_key.g.dart';

/// APIKey
///
/// Properties:
/// * [id] - The API key ID for the sub-account.
/// * [key] - API key for the sub-account.
@BuiltValue()
abstract class APIKey implements Built<APIKey, APIKeyBuilder> {
  /// The API key ID for the sub-account.
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// API key for the sub-account.
  @BuiltValueField(wireName: r'key')
  String? get key;

  @override
  String toString() => 'APIKey { [REDACTED] }';

  APIKey._();

  factory APIKey([void updates(APIKeyBuilder b)]) = _$APIKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIKey> get serializer => _$APIKeySerializer();
}

class _$APIKeySerializer implements PrimitiveSerializer<APIKey> {
  @override
  final Iterable<Type> types = const [APIKey, _$APIKey];

  @override
  final String wireName = r'APIKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIKey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    APIKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIKeyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  APIKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIKeyBuilder();
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



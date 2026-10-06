//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/dkim_key_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dkim_key_rotate_response.g.dart';

/// DKIMKeyRotateResponse
///
/// Properties:
/// * [newKey] 
/// * [rotatedKey] 
@BuiltValue()
abstract class DKIMKeyRotateResponse implements Built<DKIMKeyRotateResponse, DKIMKeyRotateResponseBuilder> {
  @BuiltValueField(wireName: r'new_key')
  DKIMKeyInfo get newKey;

  @BuiltValueField(wireName: r'rotated_key')
  DKIMKeyInfo get rotatedKey;

  @override
  String toString() => 'DKIMKeyRotateResponse { [REDACTED] }';

  DKIMKeyRotateResponse._();

  factory DKIMKeyRotateResponse([void updates(DKIMKeyRotateResponseBuilder b)]) = _$DKIMKeyRotateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DKIMKeyRotateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DKIMKeyRotateResponse> get serializer => _$DKIMKeyRotateResponseSerializer();
}

class _$DKIMKeyRotateResponseSerializer implements PrimitiveSerializer<DKIMKeyRotateResponse> {
  @override
  final Iterable<Type> types = const [DKIMKeyRotateResponse, _$DKIMKeyRotateResponse];

  @override
  final String wireName = r'DKIMKeyRotateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DKIMKeyRotateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'new_key';
    yield serializers.serialize(
      object.newKey,
      specifiedType: const FullType(DKIMKeyInfo),
    );
    yield r'rotated_key';
    yield serializers.serialize(
      object.rotatedKey,
      specifiedType: const FullType(DKIMKeyInfo),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DKIMKeyRotateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DKIMKeyRotateResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'new_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DKIMKeyInfo),
          ) as DKIMKeyInfo;
          result.newKey.replace(valueDes);
          break;
        case r'rotated_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DKIMKeyInfo),
          ) as DKIMKeyInfo;
          result.rotatedKey.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DKIMKeyRotateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DKIMKeyRotateResponseBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/new_key.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dkim_key_rotate_request.g.dart';

/// DKIMKeyRotateRequest
///
/// Properties:
/// * [newKey] 
@BuiltValue()
abstract class DKIMKeyRotateRequest implements Built<DKIMKeyRotateRequest, DKIMKeyRotateRequestBuilder> {
  @BuiltValueField(wireName: r'new_key')
  NewKey get newKey;

  @override
  String toString() => 'DKIMKeyRotateRequest { [REDACTED] }';

  DKIMKeyRotateRequest._();

  factory DKIMKeyRotateRequest([void updates(DKIMKeyRotateRequestBuilder b)]) = _$DKIMKeyRotateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DKIMKeyRotateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DKIMKeyRotateRequest> get serializer => _$DKIMKeyRotateRequestSerializer();
}

class _$DKIMKeyRotateRequestSerializer implements PrimitiveSerializer<DKIMKeyRotateRequest> {
  @override
  final Iterable<Type> types = const [DKIMKeyRotateRequest, _$DKIMKeyRotateRequest];

  @override
  final String wireName = r'DKIMKeyRotateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DKIMKeyRotateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'new_key';
    yield serializers.serialize(
      object.newKey,
      specifiedType: const FullType(NewKey),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DKIMKeyRotateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DKIMKeyRotateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'new_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NewKey),
          ) as NewKey;
          result.newKey.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DKIMKeyRotateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DKIMKeyRotateRequestBuilder();
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



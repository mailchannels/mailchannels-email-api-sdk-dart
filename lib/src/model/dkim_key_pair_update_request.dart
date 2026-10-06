//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dkim_key_pair_update_request.g.dart';

/// DKIMKeyPairUpdateRequest
///
/// Properties:
/// * [status] - New status of the DKIM key pair 
@BuiltValue()
abstract class DKIMKeyPairUpdateRequest implements Built<DKIMKeyPairUpdateRequest, DKIMKeyPairUpdateRequestBuilder> {
  /// New status of the DKIM key pair 
  @BuiltValueField(wireName: r'status')
  DKIMKeyPairUpdateRequestStatusEnum get status;
  // enum statusEnum {  revoked,  retired,  rotated,  };

  @override
  String toString() => 'DKIMKeyPairUpdateRequest { [REDACTED] }';

  DKIMKeyPairUpdateRequest._();

  factory DKIMKeyPairUpdateRequest([void updates(DKIMKeyPairUpdateRequestBuilder b)]) = _$DKIMKeyPairUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DKIMKeyPairUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DKIMKeyPairUpdateRequest> get serializer => _$DKIMKeyPairUpdateRequestSerializer();
}

class _$DKIMKeyPairUpdateRequestSerializer implements PrimitiveSerializer<DKIMKeyPairUpdateRequest> {
  @override
  final Iterable<Type> types = const [DKIMKeyPairUpdateRequest, _$DKIMKeyPairUpdateRequest];

  @override
  final String wireName = r'DKIMKeyPairUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DKIMKeyPairUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DKIMKeyPairUpdateRequestStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DKIMKeyPairUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DKIMKeyPairUpdateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DKIMKeyPairUpdateRequestStatusEnum),
          ) as DKIMKeyPairUpdateRequestStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DKIMKeyPairUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DKIMKeyPairUpdateRequestBuilder();
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


/// New status of the DKIM key pair 
class DKIMKeyPairUpdateRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'revoked')
  static const DKIMKeyPairUpdateRequestStatusEnum revoked = _$dKIMKeyPairUpdateRequestStatusEnum_revoked;
  @BuiltValueEnumConst(wireName: r'retired')
  static const DKIMKeyPairUpdateRequestStatusEnum retired = _$dKIMKeyPairUpdateRequestStatusEnum_retired;
  @BuiltValueEnumConst(wireName: r'rotated')
  static const DKIMKeyPairUpdateRequestStatusEnum rotated = _$dKIMKeyPairUpdateRequestStatusEnum_rotated;

  static Serializer<DKIMKeyPairUpdateRequestStatusEnum> get serializer => _$dKIMKeyPairUpdateRequestStatusEnumSerializer;

  const DKIMKeyPairUpdateRequestStatusEnum._(String name): super(name);

  static BuiltSet<DKIMKeyPairUpdateRequestStatusEnum> get values => _$dKIMKeyPairUpdateRequestStatusEnumValues;
  static DKIMKeyPairUpdateRequestStatusEnum valueOf(String name) => _$dKIMKeyPairUpdateRequestStatusEnumValueOf(name);
}


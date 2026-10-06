//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patch_custom_tracking_domain_request.g.dart';

/// PatchCustomTrackingDomainRequest
///
/// Properties:
/// * [name] - New label for this custom tracking domain
/// * [status] - New status; active ↔ disabled
@BuiltValue()
abstract class PatchCustomTrackingDomainRequest implements Built<PatchCustomTrackingDomainRequest, PatchCustomTrackingDomainRequestBuilder> {
  /// New label for this custom tracking domain
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// New status; active ↔ disabled
  @BuiltValueField(wireName: r'status')
  PatchCustomTrackingDomainRequestStatusEnum? get status;
  // enum statusEnum {  active,  disabled,  };

  @override
  String toString() => 'PatchCustomTrackingDomainRequest { [REDACTED] }';

  PatchCustomTrackingDomainRequest._();

  factory PatchCustomTrackingDomainRequest([void updates(PatchCustomTrackingDomainRequestBuilder b)]) = _$PatchCustomTrackingDomainRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchCustomTrackingDomainRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchCustomTrackingDomainRequest> get serializer => _$PatchCustomTrackingDomainRequestSerializer();
}

class _$PatchCustomTrackingDomainRequestSerializer implements PrimitiveSerializer<PatchCustomTrackingDomainRequest> {
  @override
  final Iterable<Type> types = const [PatchCustomTrackingDomainRequest, _$PatchCustomTrackingDomainRequest];

  @override
  final String wireName = r'PatchCustomTrackingDomainRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchCustomTrackingDomainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(PatchCustomTrackingDomainRequestStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchCustomTrackingDomainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchCustomTrackingDomainRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PatchCustomTrackingDomainRequestStatusEnum),
          ) as PatchCustomTrackingDomainRequestStatusEnum?;
          if (valueDes == null) continue;
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
  PatchCustomTrackingDomainRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchCustomTrackingDomainRequestBuilder();
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


/// New status; active ↔ disabled
class PatchCustomTrackingDomainRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const PatchCustomTrackingDomainRequestStatusEnum active = _$patchCustomTrackingDomainRequestStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const PatchCustomTrackingDomainRequestStatusEnum disabled = _$patchCustomTrackingDomainRequestStatusEnum_disabled;

  static Serializer<PatchCustomTrackingDomainRequestStatusEnum> get serializer => _$patchCustomTrackingDomainRequestStatusEnumSerializer;

  const PatchCustomTrackingDomainRequestStatusEnum._(String name): super(name);

  static BuiltSet<PatchCustomTrackingDomainRequestStatusEnum> get values => _$patchCustomTrackingDomainRequestStatusEnumValues;
  static PatchCustomTrackingDomainRequestStatusEnum valueOf(String name) => _$patchCustomTrackingDomainRequestStatusEnumValueOf(name);
}


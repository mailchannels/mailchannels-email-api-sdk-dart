//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_tracking_domain.g.dart';

/// CustomTrackingDomain
///
/// Properties:
/// * [createdAt] - ISO 8601 timestamp when the domain was registered
/// * [hostname] - The registered domain hostname
/// * [name] - The label for this custom tracking domain
/// * [scope] - The event type this domain handles
/// * [status] - Current status of the custom tracking domain
@BuiltValue()
abstract class CustomTrackingDomain implements Built<CustomTrackingDomain, CustomTrackingDomainBuilder> {
  /// ISO 8601 timestamp when the domain was registered
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The registered domain hostname
  @BuiltValueField(wireName: r'hostname')
  String get hostname;

  /// The label for this custom tracking domain
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The event type this domain handles
  @BuiltValueField(wireName: r'scope')
  CustomTrackingDomainScopeEnum get scope;
  // enum scopeEnum {  click,  open,  unsubscribe,  };

  /// Current status of the custom tracking domain
  @BuiltValueField(wireName: r'status')
  CustomTrackingDomainStatusEnum get status;
  // enum statusEnum {  active,  disabled,  };

  @override
  String toString() => 'CustomTrackingDomain { [REDACTED] }';

  CustomTrackingDomain._();

  factory CustomTrackingDomain([void updates(CustomTrackingDomainBuilder b)]) = _$CustomTrackingDomain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomTrackingDomainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomTrackingDomain> get serializer => _$CustomTrackingDomainSerializer();
}

class _$CustomTrackingDomainSerializer implements PrimitiveSerializer<CustomTrackingDomain> {
  @override
  final Iterable<Type> types = const [CustomTrackingDomain, _$CustomTrackingDomain];

  @override
  final String wireName = r'CustomTrackingDomain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomTrackingDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'hostname';
    yield serializers.serialize(
      object.hostname,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(CustomTrackingDomainScopeEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(CustomTrackingDomainStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomTrackingDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomTrackingDomainBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'hostname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hostname = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CustomTrackingDomainScopeEnum),
          ) as CustomTrackingDomainScopeEnum;
          result.scope = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CustomTrackingDomainStatusEnum),
          ) as CustomTrackingDomainStatusEnum;
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
  CustomTrackingDomain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomTrackingDomainBuilder();
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


/// The event type this domain handles
class CustomTrackingDomainScopeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'click')
  static const CustomTrackingDomainScopeEnum click = _$customTrackingDomainScopeEnum_click;
  @BuiltValueEnumConst(wireName: r'open')
  static const CustomTrackingDomainScopeEnum open = _$customTrackingDomainScopeEnum_open;
  @BuiltValueEnumConst(wireName: r'unsubscribe')
  static const CustomTrackingDomainScopeEnum unsubscribe = _$customTrackingDomainScopeEnum_unsubscribe;

  static Serializer<CustomTrackingDomainScopeEnum> get serializer => _$customTrackingDomainScopeEnumSerializer;

  const CustomTrackingDomainScopeEnum._(String name): super(name);

  static BuiltSet<CustomTrackingDomainScopeEnum> get values => _$customTrackingDomainScopeEnumValues;
  static CustomTrackingDomainScopeEnum valueOf(String name) => _$customTrackingDomainScopeEnumValueOf(name);
}

/// Current status of the custom tracking domain
class CustomTrackingDomainStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const CustomTrackingDomainStatusEnum active = _$customTrackingDomainStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const CustomTrackingDomainStatusEnum disabled = _$customTrackingDomainStatusEnum_disabled;

  static Serializer<CustomTrackingDomainStatusEnum> get serializer => _$customTrackingDomainStatusEnumSerializer;

  const CustomTrackingDomainStatusEnum._(String name): super(name);

  static BuiltSet<CustomTrackingDomainStatusEnum> get values => _$customTrackingDomainStatusEnumValues;
  static CustomTrackingDomainStatusEnum valueOf(String name) => _$customTrackingDomainStatusEnumValueOf(name);
}


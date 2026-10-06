//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sub_account_details.g.dart';

/// SubAccountDetails
///
/// Properties:
/// * [companyName] 
/// * [enabled] 
/// * [handle] 
@BuiltValue()
abstract class SubAccountDetails implements Built<SubAccountDetails, SubAccountDetailsBuilder> {
  @BuiltValueField(wireName: r'company_name')
  String? get companyName;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'handle')
  String get handle;

  @override
  String toString() => 'SubAccountDetails { [REDACTED] }';

  SubAccountDetails._();

  factory SubAccountDetails([void updates(SubAccountDetailsBuilder b)]) = _$SubAccountDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubAccountDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubAccountDetails> get serializer => _$SubAccountDetailsSerializer();
}

class _$SubAccountDetailsSerializer implements PrimitiveSerializer<SubAccountDetails> {
  @override
  final Iterable<Type> types = const [SubAccountDetails, _$SubAccountDetails];

  @override
  final String wireName = r'SubAccountDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubAccountDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.companyName != null) {
      yield r'company_name';
      yield serializers.serialize(
        object.companyName,
        specifiedType: const FullType(String),
      );
    }
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'handle';
    yield serializers.serialize(
      object.handle,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SubAccountDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubAccountDetailsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'company_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.companyName = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'handle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.handle = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubAccountDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubAccountDetailsBuilder();
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



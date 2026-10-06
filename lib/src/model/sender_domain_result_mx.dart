//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sender_domain_result_mx.g.dart';

/// SenderDomainResultMx
///
/// Properties:
/// * [reason] - A human-readable explanation of MX record check. 
/// * [verdict] 
@BuiltValue()
abstract class SenderDomainResultMx implements Built<SenderDomainResultMx, SenderDomainResultMxBuilder> {
  /// A human-readable explanation of MX record check. 
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'verdict')
  SenderDomainResultMxVerdictEnum? get verdict;
  // enum verdictEnum {  passed,  failed,  };

  @override
  String toString() => 'SenderDomainResultMx { [REDACTED] }';

  SenderDomainResultMx._();

  factory SenderDomainResultMx([void updates(SenderDomainResultMxBuilder b)]) = _$SenderDomainResultMx;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SenderDomainResultMxBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SenderDomainResultMx> get serializer => _$SenderDomainResultMxSerializer();
}

class _$SenderDomainResultMxSerializer implements PrimitiveSerializer<SenderDomainResultMx> {
  @override
  final Iterable<Type> types = const [SenderDomainResultMx, _$SenderDomainResultMx];

  @override
  final String wireName = r'SenderDomainResultMx';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SenderDomainResultMx object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType(SenderDomainResultMxVerdictEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SenderDomainResultMx object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SenderDomainResultMxBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SenderDomainResultMxVerdictEnum),
          ) as SenderDomainResultMxVerdictEnum?;
          if (valueDes == null) continue;
          result.verdict = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SenderDomainResultMx deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SenderDomainResultMxBuilder();
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


class SenderDomainResultMxVerdictEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'passed')
  static const SenderDomainResultMxVerdictEnum passed = _$senderDomainResultMxVerdictEnum_passed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const SenderDomainResultMxVerdictEnum failed = _$senderDomainResultMxVerdictEnum_failed;

  static Serializer<SenderDomainResultMxVerdictEnum> get serializer => _$senderDomainResultMxVerdictEnumSerializer;

  const SenderDomainResultMxVerdictEnum._(String name): super(name);

  static BuiltSet<SenderDomainResultMxVerdictEnum> get values => _$senderDomainResultMxVerdictEnumValues;
  static SenderDomainResultMxVerdictEnum valueOf(String name) => _$senderDomainResultMxVerdictEnumValueOf(name);
}


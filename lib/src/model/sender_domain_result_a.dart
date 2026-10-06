//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sender_domain_result_a.g.dart';

/// SenderDomainResultA
///
/// Properties:
/// * [reason] - A human-readable explanation of A record check. 
/// * [verdict] 
@BuiltValue()
abstract class SenderDomainResultA implements Built<SenderDomainResultA, SenderDomainResultABuilder> {
  /// A human-readable explanation of A record check. 
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'verdict')
  SenderDomainResultAVerdictEnum? get verdict;
  // enum verdictEnum {  passed,  failed,  };

  @override
  String toString() => 'SenderDomainResultA { [REDACTED] }';

  SenderDomainResultA._();

  factory SenderDomainResultA([void updates(SenderDomainResultABuilder b)]) = _$SenderDomainResultA;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SenderDomainResultABuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SenderDomainResultA> get serializer => _$SenderDomainResultASerializer();
}

class _$SenderDomainResultASerializer implements PrimitiveSerializer<SenderDomainResultA> {
  @override
  final Iterable<Type> types = const [SenderDomainResultA, _$SenderDomainResultA];

  @override
  final String wireName = r'SenderDomainResultA';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SenderDomainResultA object, {
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
        specifiedType: const FullType(SenderDomainResultAVerdictEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SenderDomainResultA object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SenderDomainResultABuilder result,
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
            specifiedType: const FullType.nullable(SenderDomainResultAVerdictEnum),
          ) as SenderDomainResultAVerdictEnum?;
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
  SenderDomainResultA deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SenderDomainResultABuilder();
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


class SenderDomainResultAVerdictEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'passed')
  static const SenderDomainResultAVerdictEnum passed = _$senderDomainResultAVerdictEnum_passed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const SenderDomainResultAVerdictEnum failed = _$senderDomainResultAVerdictEnum_failed;

  static Serializer<SenderDomainResultAVerdictEnum> get serializer => _$senderDomainResultAVerdictEnumSerializer;

  const SenderDomainResultAVerdictEnum._(String name): super(name);

  static BuiltSet<SenderDomainResultAVerdictEnum> get values => _$senderDomainResultAVerdictEnumValues;
  static SenderDomainResultAVerdictEnum valueOf(String name) => _$senderDomainResultAVerdictEnumValueOf(name);
}


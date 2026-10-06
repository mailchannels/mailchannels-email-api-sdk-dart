//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lockdown_result.g.dart';

/// LockdownResult
///
/// Properties:
/// * [reason] - A human-readable explanation of Domain Lockdown check. 
/// * [verdict] 
@BuiltValue()
abstract class LockdownResult implements Built<LockdownResult, LockdownResultBuilder> {
  /// A human-readable explanation of Domain Lockdown check. 
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'verdict')
  LockdownResultVerdictEnum? get verdict;
  // enum verdictEnum {  passed,  failed,  };

  @override
  String toString() => 'LockdownResult { [REDACTED] }';

  LockdownResult._();

  factory LockdownResult([void updates(LockdownResultBuilder b)]) = _$LockdownResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LockdownResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LockdownResult> get serializer => _$LockdownResultSerializer();
}

class _$LockdownResultSerializer implements PrimitiveSerializer<LockdownResult> {
  @override
  final Iterable<Type> types = const [LockdownResult, _$LockdownResult];

  @override
  final String wireName = r'LockdownResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LockdownResult object, {
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
        specifiedType: const FullType(LockdownResultVerdictEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LockdownResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LockdownResultBuilder result,
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
            specifiedType: const FullType.nullable(LockdownResultVerdictEnum),
          ) as LockdownResultVerdictEnum?;
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
  LockdownResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LockdownResultBuilder();
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


class LockdownResultVerdictEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'passed')
  static const LockdownResultVerdictEnum passed = _$lockdownResultVerdictEnum_passed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const LockdownResultVerdictEnum failed = _$lockdownResultVerdictEnum_failed;

  static Serializer<LockdownResultVerdictEnum> get serializer => _$lockdownResultVerdictEnumSerializer;

  const LockdownResultVerdictEnum._(String name): super(name);

  static BuiltSet<LockdownResultVerdictEnum> get values => _$lockdownResultVerdictEnumValues;
  static LockdownResultVerdictEnum valueOf(String name) => _$lockdownResultVerdictEnumValueOf(name);
}


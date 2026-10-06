//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spf_result.g.dart';

/// SpfResult
///
/// Properties:
/// * [reason] - A human-readable explanation of SPF check. 
/// * [spfRecord] - The SPF record that was used for the check. 
/// * [spfRecordError] - Error message if the SPF record lookup failed. 
/// * [verdict] 
@BuiltValue()
abstract class SpfResult implements Built<SpfResult, SpfResultBuilder> {
  /// A human-readable explanation of SPF check. 
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// The SPF record that was used for the check. 
  @BuiltValueField(wireName: r'spfRecord')
  String? get spfRecord;

  /// Error message if the SPF record lookup failed. 
  @BuiltValueField(wireName: r'spfRecordError')
  String? get spfRecordError;

  @BuiltValueField(wireName: r'verdict')
  SpfResultVerdictEnum? get verdict;
  // enum verdictEnum {  passed,  failed,  soft failed,  temporary error,  permanent error,  neutral,  none,  unknown,  };

  @override
  String toString() => 'SpfResult { [REDACTED] }';

  SpfResult._();

  factory SpfResult([void updates(SpfResultBuilder b)]) = _$SpfResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpfResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpfResult> get serializer => _$SpfResultSerializer();
}

class _$SpfResultSerializer implements PrimitiveSerializer<SpfResult> {
  @override
  final Iterable<Type> types = const [SpfResult, _$SpfResult];

  @override
  final String wireName = r'SpfResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpfResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.spfRecord != null) {
      yield r'spfRecord';
      yield serializers.serialize(
        object.spfRecord,
        specifiedType: const FullType(String),
      );
    }
    if (object.spfRecordError != null) {
      yield r'spfRecordError';
      yield serializers.serialize(
        object.spfRecordError,
        specifiedType: const FullType(String),
      );
    }
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType(SpfResultVerdictEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SpfResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpfResultBuilder result,
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
        case r'spfRecord':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.spfRecord = valueDes;
          break;
        case r'spfRecordError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.spfRecordError = valueDes;
          break;
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SpfResultVerdictEnum),
          ) as SpfResultVerdictEnum?;
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
  SpfResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpfResultBuilder();
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


class SpfResultVerdictEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'passed')
  static const SpfResultVerdictEnum passed = _$spfResultVerdictEnum_passed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const SpfResultVerdictEnum failed = _$spfResultVerdictEnum_failed;
  @BuiltValueEnumConst(wireName: r'soft failed')
  static const SpfResultVerdictEnum softFailed = _$spfResultVerdictEnum_softFailed;
  @BuiltValueEnumConst(wireName: r'temporary error')
  static const SpfResultVerdictEnum temporaryError = _$spfResultVerdictEnum_temporaryError;
  @BuiltValueEnumConst(wireName: r'permanent error')
  static const SpfResultVerdictEnum permanentError = _$spfResultVerdictEnum_permanentError;
  @BuiltValueEnumConst(wireName: r'neutral')
  static const SpfResultVerdictEnum neutral = _$spfResultVerdictEnum_neutral;
  @BuiltValueEnumConst(wireName: r'none')
  static const SpfResultVerdictEnum none = _$spfResultVerdictEnum_none;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const SpfResultVerdictEnum unknown = _$spfResultVerdictEnum_unknown;

  static Serializer<SpfResultVerdictEnum> get serializer => _$spfResultVerdictEnumSerializer;

  const SpfResultVerdictEnum._(String name): super(name);

  static BuiltSet<SpfResultVerdictEnum> get values => _$spfResultVerdictEnumValues;
  static SpfResultVerdictEnum valueOf(String name) => _$spfResultVerdictEnumValueOf(name);
}


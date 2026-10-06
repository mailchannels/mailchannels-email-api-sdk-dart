//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/sender_domain_result_mx.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/sender_domain_result_a.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sender_domain_result.g.dart';

/// These results are here to help avoid SDNF (Sender Domain Not Found) blocks. For messages not to get blocked by [SDNF](https://support.mailchannels.com/hc/en-us/articles/203155500-550-5-2-1-SDNF-Sender-Domain-Not-Found), we require either an MX or A record to exist for the sender domain. 
///
/// Properties:
/// * [a] 
/// * [mx] 
/// * [verdict] - Overall verdict. Passed if either A or MX record check passed.
@BuiltValue()
abstract class SenderDomainResult implements Built<SenderDomainResult, SenderDomainResultBuilder> {
  @BuiltValueField(wireName: r'a')
  SenderDomainResultA? get a;

  @BuiltValueField(wireName: r'mx')
  SenderDomainResultMx? get mx;

  /// Overall verdict. Passed if either A or MX record check passed.
  @BuiltValueField(wireName: r'verdict')
  SenderDomainResultVerdictEnum? get verdict;
  // enum verdictEnum {  passed,  failed,  };

  @override
  String toString() => 'SenderDomainResult { [REDACTED] }';

  SenderDomainResult._();

  factory SenderDomainResult([void updates(SenderDomainResultBuilder b)]) = _$SenderDomainResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SenderDomainResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SenderDomainResult> get serializer => _$SenderDomainResultSerializer();
}

class _$SenderDomainResultSerializer implements PrimitiveSerializer<SenderDomainResult> {
  @override
  final Iterable<Type> types = const [SenderDomainResult, _$SenderDomainResult];

  @override
  final String wireName = r'SenderDomainResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SenderDomainResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.a != null) {
      yield r'a';
      yield serializers.serialize(
        object.a,
        specifiedType: const FullType(SenderDomainResultA),
      );
    }
    if (object.mx != null) {
      yield r'mx';
      yield serializers.serialize(
        object.mx,
        specifiedType: const FullType(SenderDomainResultMx),
      );
    }
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType(SenderDomainResultVerdictEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SenderDomainResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SenderDomainResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'a':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SenderDomainResultA),
          ) as SenderDomainResultA?;
          if (valueDes == null) continue;
          result.a.replace(valueDes);
          break;
        case r'mx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SenderDomainResultMx),
          ) as SenderDomainResultMx?;
          if (valueDes == null) continue;
          result.mx.replace(valueDes);
          break;
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SenderDomainResultVerdictEnum),
          ) as SenderDomainResultVerdictEnum?;
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
  SenderDomainResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SenderDomainResultBuilder();
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


/// Overall verdict. Passed if either A or MX record check passed.
class SenderDomainResultVerdictEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'passed')
  static const SenderDomainResultVerdictEnum passed = _$senderDomainResultVerdictEnum_passed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const SenderDomainResultVerdictEnum failed = _$senderDomainResultVerdictEnum_failed;

  static Serializer<SenderDomainResultVerdictEnum> get serializer => _$senderDomainResultVerdictEnumSerializer;

  const SenderDomainResultVerdictEnum._(String name): super(name);

  static BuiltSet<SenderDomainResultVerdictEnum> get values => _$senderDomainResultVerdictEnumValues;
  static SenderDomainResultVerdictEnum valueOf(String name) => _$senderDomainResultVerdictEnumValueOf(name);
}


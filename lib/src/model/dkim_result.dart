//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dkim_result.g.dart';

/// DkimResult
///
/// Properties:
/// * [dkimDomain] 
/// * [dkimKeyStatus] - The human readable status of the DKIM key used for verification. This field is only present if the DKIM check was performed using a DKIM key managed by MailChannels. If a DKIM key is present in the request, this field will not be included. 
/// * [dkimSelector] 
/// * [reason] - A human-readable explanation of DKIM check.
/// * [verdict] 
@BuiltValue()
abstract class DkimResult implements Built<DkimResult, DkimResultBuilder> {
  @BuiltValueField(wireName: r'dkim_domain')
  String? get dkimDomain;

  /// The human readable status of the DKIM key used for verification. This field is only present if the DKIM check was performed using a DKIM key managed by MailChannels. If a DKIM key is present in the request, this field will not be included. 
  @BuiltValueField(wireName: r'dkim_key_status')
  String? get dkimKeyStatus;

  @BuiltValueField(wireName: r'dkim_selector')
  String? get dkimSelector;

  /// A human-readable explanation of DKIM check.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'verdict')
  DkimResultVerdictEnum? get verdict;
  // enum verdictEnum {  passed,  failed,  };

  @override
  String toString() => 'DkimResult { [REDACTED] }';

  DkimResult._();

  factory DkimResult([void updates(DkimResultBuilder b)]) = _$DkimResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DkimResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DkimResult> get serializer => _$DkimResultSerializer();
}

class _$DkimResultSerializer implements PrimitiveSerializer<DkimResult> {
  @override
  final Iterable<Type> types = const [DkimResult, _$DkimResult];

  @override
  final String wireName = r'DkimResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DkimResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dkimDomain != null) {
      yield r'dkim_domain';
      yield serializers.serialize(
        object.dkimDomain,
        specifiedType: const FullType(String),
      );
    }
    if (object.dkimKeyStatus != null) {
      yield r'dkim_key_status';
      yield serializers.serialize(
        object.dkimKeyStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.dkimSelector != null) {
      yield r'dkim_selector';
      yield serializers.serialize(
        object.dkimSelector,
        specifiedType: const FullType(String),
      );
    }
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
        specifiedType: const FullType(DkimResultVerdictEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DkimResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DkimResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dkim_domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dkimDomain = valueDes;
          break;
        case r'dkim_key_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dkimKeyStatus = valueDes;
          break;
        case r'dkim_selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dkimSelector = valueDes;
          break;
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
            specifiedType: const FullType.nullable(DkimResultVerdictEnum),
          ) as DkimResultVerdictEnum?;
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
  DkimResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DkimResultBuilder();
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


class DkimResultVerdictEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'passed')
  static const DkimResultVerdictEnum passed = _$dkimResultVerdictEnum_passed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const DkimResultVerdictEnum failed = _$dkimResultVerdictEnum_failed;

  static Serializer<DkimResultVerdictEnum> get serializer => _$dkimResultVerdictEnumSerializer;

  const DkimResultVerdictEnum._(String name): super(name);

  static BuiltSet<DkimResultVerdictEnum> get values => _$dkimResultVerdictEnumValues;
  static DkimResultVerdictEnum valueOf(String name) => _$dkimResultVerdictEnumValueOf(name);
}


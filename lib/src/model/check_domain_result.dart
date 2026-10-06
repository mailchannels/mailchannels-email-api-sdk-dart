//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/check_results.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_domain_result.g.dart';

/// CheckDomainResult
///
/// Properties:
/// * [checkResults] 
/// * [references] - Link to SPF, Domain Lockdown or DKIM references, displayed if any verdict is not passed.
@BuiltValue()
abstract class CheckDomainResult implements Built<CheckDomainResult, CheckDomainResultBuilder> {
  @BuiltValueField(wireName: r'check_results')
  CheckResults? get checkResults;

  /// Link to SPF, Domain Lockdown or DKIM references, displayed if any verdict is not passed.
  @BuiltValueField(wireName: r'references')
  BuiltList<String>? get references;

  @override
  String toString() => 'CheckDomainResult { [REDACTED] }';

  CheckDomainResult._();

  factory CheckDomainResult([void updates(CheckDomainResultBuilder b)]) = _$CheckDomainResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckDomainResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckDomainResult> get serializer => _$CheckDomainResultSerializer();
}

class _$CheckDomainResultSerializer implements PrimitiveSerializer<CheckDomainResult> {
  @override
  final Iterable<Type> types = const [CheckDomainResult, _$CheckDomainResult];

  @override
  final String wireName = r'CheckDomainResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckDomainResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.checkResults != null) {
      yield r'check_results';
      yield serializers.serialize(
        object.checkResults,
        specifiedType: const FullType(CheckResults),
      );
    }
    if (object.references != null) {
      yield r'references';
      yield serializers.serialize(
        object.references,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckDomainResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckDomainResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'check_results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CheckResults),
          ) as CheckResults?;
          if (valueDes == null) continue;
          result.checkResults.replace(valueDes);
          break;
        case r'references':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.references.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckDomainResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckDomainResultBuilder();
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



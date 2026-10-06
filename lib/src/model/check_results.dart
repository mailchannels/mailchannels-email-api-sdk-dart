//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/sender_domain_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/lockdown_result.dart';
import 'package:mailchannels_email_api/src/model/dkim_result.dart';
import 'package:mailchannels_email_api/src/model/spf_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_results.g.dart';

/// CheckResults
///
/// Properties:
/// * [dkim] 
/// * [domainLockdown] 
/// * [senderDomain] 
/// * [spf] 
@BuiltValue()
abstract class CheckResults implements Built<CheckResults, CheckResultsBuilder> {
  @BuiltValueField(wireName: r'dkim')
  BuiltList<DkimResult>? get dkim;

  @BuiltValueField(wireName: r'domain_lockdown')
  LockdownResult? get domainLockdown;

  @BuiltValueField(wireName: r'sender_domain')
  SenderDomainResult? get senderDomain;

  @BuiltValueField(wireName: r'spf')
  SpfResult? get spf;

  @override
  String toString() => 'CheckResults { [REDACTED] }';

  CheckResults._();

  factory CheckResults([void updates(CheckResultsBuilder b)]) = _$CheckResults;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckResultsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckResults> get serializer => _$CheckResultsSerializer();
}

class _$CheckResultsSerializer implements PrimitiveSerializer<CheckResults> {
  @override
  final Iterable<Type> types = const [CheckResults, _$CheckResults];

  @override
  final String wireName = r'CheckResults';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckResults object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dkim != null) {
      yield r'dkim';
      yield serializers.serialize(
        object.dkim,
        specifiedType: const FullType(BuiltList, [FullType(DkimResult)]),
      );
    }
    if (object.domainLockdown != null) {
      yield r'domain_lockdown';
      yield serializers.serialize(
        object.domainLockdown,
        specifiedType: const FullType(LockdownResult),
      );
    }
    if (object.senderDomain != null) {
      yield r'sender_domain';
      yield serializers.serialize(
        object.senderDomain,
        specifiedType: const FullType(SenderDomainResult),
      );
    }
    if (object.spf != null) {
      yield r'spf';
      yield serializers.serialize(
        object.spf,
        specifiedType: const FullType(SpfResult),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckResults object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckResultsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dkim':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DkimResult)]),
          ) as BuiltList<DkimResult>?;
          if (valueDes == null) continue;
          result.dkim.replace(valueDes);
          break;
        case r'domain_lockdown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LockdownResult),
          ) as LockdownResult?;
          if (valueDes == null) continue;
          result.domainLockdown.replace(valueDes);
          break;
        case r'sender_domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SenderDomainResult),
          ) as SenderDomainResult?;
          if (valueDes == null) continue;
          result.senderDomain.replace(valueDes);
          break;
        case r'spf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SpfResult),
          ) as SpfResult?;
          if (valueDes == null) continue;
          result.spf.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckResults deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckResultsBuilder();
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



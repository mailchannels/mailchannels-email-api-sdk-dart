//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/dkim_dns_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dkim_key_info.g.dart';

/// DKIMKeyInfo
///
/// Properties:
/// * [algorithm] - Algorithm used for the key pair 
/// * [createdAt] - Timestamp when the key pair was created 
/// * [dkimDnsRecords] - Suggested DNS records for the DKIM key 
/// * [domain] - Domain associated with the key pair 
/// * [gracePeriodExpiresAt] - UTC timestamp after which you can no longer use the rotated key for signing 
/// * [keyLength] - Key length in bits 
/// * [publicKey] 
/// * [retiresAt] - UTC timestamp when a rotated key pair is retired 
/// * [selector] - Selector assigned to the key pair 
/// * [status] 
/// * [statusModifiedAt] - Timestamp when the key was last modified 
@BuiltValue()
abstract class DKIMKeyInfo implements Built<DKIMKeyInfo, DKIMKeyInfoBuilder> {
  /// Algorithm used for the key pair 
  @BuiltValueField(wireName: r'algorithm')
  String get algorithm;

  /// Timestamp when the key pair was created 
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Suggested DNS records for the DKIM key 
  @BuiltValueField(wireName: r'dkim_dns_records')
  BuiltList<DKIMDnsRecord?>? get dkimDnsRecords;

  /// Domain associated with the key pair 
  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// UTC timestamp after which you can no longer use the rotated key for signing 
  @BuiltValueField(wireName: r'gracePeriodExpiresAt')
  DateTime? get gracePeriodExpiresAt;

  /// Key length in bits 
  @BuiltValueField(wireName: r'key_length')
  int? get keyLength;

  @BuiltValueField(wireName: r'public_key')
  String get publicKey;

  /// UTC timestamp when a rotated key pair is retired 
  @BuiltValueField(wireName: r'retiresAt')
  DateTime? get retiresAt;

  /// Selector assigned to the key pair 
  @BuiltValueField(wireName: r'selector')
  String get selector;

  @BuiltValueField(wireName: r'status')
  DKIMKeyInfoStatusEnum get status;
  // enum statusEnum {  active,  retired,  revoked,  rotated,  };

  /// Timestamp when the key was last modified 
  @BuiltValueField(wireName: r'status_modified_at')
  DateTime? get statusModifiedAt;

  @override
  String toString() => 'DKIMKeyInfo { [REDACTED] }';

  DKIMKeyInfo._();

  factory DKIMKeyInfo([void updates(DKIMKeyInfoBuilder b)]) = _$DKIMKeyInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DKIMKeyInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DKIMKeyInfo> get serializer => _$DKIMKeyInfoSerializer();
}

class _$DKIMKeyInfoSerializer implements PrimitiveSerializer<DKIMKeyInfo> {
  @override
  final Iterable<Type> types = const [DKIMKeyInfo, _$DKIMKeyInfo];

  @override
  final String wireName = r'DKIMKeyInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DKIMKeyInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'algorithm';
    yield serializers.serialize(
      object.algorithm,
      specifiedType: const FullType(String),
    );
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.dkimDnsRecords != null) {
      yield r'dkim_dns_records';
      yield serializers.serialize(
        object.dkimDnsRecords,
        specifiedType: const FullType(BuiltList, [FullType.nullable(DKIMDnsRecord)]),
      );
    }
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    if (object.gracePeriodExpiresAt != null) {
      yield r'gracePeriodExpiresAt';
      yield serializers.serialize(
        object.gracePeriodExpiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.keyLength != null) {
      yield r'key_length';
      yield serializers.serialize(
        object.keyLength,
        specifiedType: const FullType(int),
      );
    }
    yield r'public_key';
    yield serializers.serialize(
      object.publicKey,
      specifiedType: const FullType(String),
    );
    if (object.retiresAt != null) {
      yield r'retiresAt';
      yield serializers.serialize(
        object.retiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'selector';
    yield serializers.serialize(
      object.selector,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DKIMKeyInfoStatusEnum),
    );
    if (object.statusModifiedAt != null) {
      yield r'status_modified_at';
      yield serializers.serialize(
        object.statusModifiedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DKIMKeyInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DKIMKeyInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'algorithm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.algorithm = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'dkim_dns_records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(DKIMDnsRecord)]),
          ) as BuiltList<DKIMDnsRecord?>?;
          if (valueDes == null) continue;
          result.dkimDnsRecords.replace(valueDes);
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'gracePeriodExpiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.gracePeriodExpiresAt = valueDes;
          break;
        case r'key_length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.keyLength = valueDes;
          break;
        case r'public_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.publicKey = valueDes;
          break;
        case r'retiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.retiresAt = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selector = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DKIMKeyInfoStatusEnum),
          ) as DKIMKeyInfoStatusEnum;
          result.status = valueDes;
          break;
        case r'status_modified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.statusModifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DKIMKeyInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DKIMKeyInfoBuilder();
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


class DKIMKeyInfoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const DKIMKeyInfoStatusEnum active = _$dKIMKeyInfoStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'retired')
  static const DKIMKeyInfoStatusEnum retired = _$dKIMKeyInfoStatusEnum_retired;
  @BuiltValueEnumConst(wireName: r'revoked')
  static const DKIMKeyInfoStatusEnum revoked = _$dKIMKeyInfoStatusEnum_revoked;
  @BuiltValueEnumConst(wireName: r'rotated')
  static const DKIMKeyInfoStatusEnum rotated = _$dKIMKeyInfoStatusEnum_rotated;

  static Serializer<DKIMKeyInfoStatusEnum> get serializer => _$dKIMKeyInfoStatusEnumSerializer;

  const DKIMKeyInfoStatusEnum._(String name): super(name);

  static BuiltSet<DKIMKeyInfoStatusEnum> get values => _$dKIMKeyInfoStatusEnumValues;
  static DKIMKeyInfoStatusEnum valueOf(String name) => _$dKIMKeyInfoStatusEnumValueOf(name);
}


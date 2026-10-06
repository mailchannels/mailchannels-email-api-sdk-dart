//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dns_setup_required.g.dart';

/// DnsSetupRequired
///
/// Properties:
/// * [instructions] - Human-readable guidance for the DNS records that must be in place before retrying.
/// * [token] - UUID v4 nonce; also the TXT record value to set. Present only when TXT ownership verification is pending.
/// * [txtRecordName] - Fully-qualified DNS TXT record name to add. Present only when TXT ownership verification is pending.
/// * [txtRecordValue] - Value for the DNS TXT record (same as token). Present only when TXT ownership verification is pending.
@BuiltValue()
abstract class DnsSetupRequired implements Built<DnsSetupRequired, DnsSetupRequiredBuilder> {
  /// Human-readable guidance for the DNS records that must be in place before retrying.
  @BuiltValueField(wireName: r'instructions')
  String? get instructions;

  /// UUID v4 nonce; also the TXT record value to set. Present only when TXT ownership verification is pending.
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// Fully-qualified DNS TXT record name to add. Present only when TXT ownership verification is pending.
  @BuiltValueField(wireName: r'txt_record_name')
  String? get txtRecordName;

  /// Value for the DNS TXT record (same as token). Present only when TXT ownership verification is pending.
  @BuiltValueField(wireName: r'txt_record_value')
  String? get txtRecordValue;

  @override
  String toString() => 'DnsSetupRequired { [REDACTED] }';

  DnsSetupRequired._();

  factory DnsSetupRequired([void updates(DnsSetupRequiredBuilder b)]) = _$DnsSetupRequired;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DnsSetupRequiredBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DnsSetupRequired> get serializer => _$DnsSetupRequiredSerializer();
}

class _$DnsSetupRequiredSerializer implements PrimitiveSerializer<DnsSetupRequired> {
  @override
  final Iterable<Type> types = const [DnsSetupRequired, _$DnsSetupRequired];

  @override
  final String wireName = r'DnsSetupRequired';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DnsSetupRequired object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.instructions != null) {
      yield r'instructions';
      yield serializers.serialize(
        object.instructions,
        specifiedType: const FullType(String),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.txtRecordName != null) {
      yield r'txt_record_name';
      yield serializers.serialize(
        object.txtRecordName,
        specifiedType: const FullType(String),
      );
    }
    if (object.txtRecordValue != null) {
      yield r'txt_record_value';
      yield serializers.serialize(
        object.txtRecordValue,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DnsSetupRequired object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DnsSetupRequiredBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.instructions = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'txt_record_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.txtRecordName = valueDes;
          break;
        case r'txt_record_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.txtRecordValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DnsSetupRequired deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DnsSetupRequiredBuilder();
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



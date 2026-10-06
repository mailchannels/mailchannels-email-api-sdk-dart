//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dkim_dns_record.g.dart';

/// Suggested DNS record for the DKIM key 
///
/// Properties:
/// * [name] 
/// * [type] 
/// * [value] 
@BuiltValue()
abstract class DKIMDnsRecord implements Built<DKIMDnsRecord, DKIMDnsRecordBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'value')
  String get value;

  @override
  String toString() => 'DKIMDnsRecord { [REDACTED] }';

  DKIMDnsRecord._();

  factory DKIMDnsRecord([void updates(DKIMDnsRecordBuilder b)]) = _$DKIMDnsRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DKIMDnsRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DKIMDnsRecord> get serializer => _$DKIMDnsRecordSerializer();
}

class _$DKIMDnsRecordSerializer implements PrimitiveSerializer<DKIMDnsRecord> {
  @override
  final Iterable<Type> types = const [DKIMDnsRecord, _$DKIMDnsRecord];

  @override
  final String wireName = r'DKIMDnsRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DKIMDnsRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DKIMDnsRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DKIMDnsRecordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DKIMDnsRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DKIMDnsRecordBuilder();
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



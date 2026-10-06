//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dkim_key_pair_create_request.g.dart';

/// DKIMKeyPairCreateRequest
///
/// Properties:
/// * [algorithm] - Algorithm used for the new key pair Currently, only RSA is supported. 
/// * [keyLength] - Key length in bits. For RSA, must be a multiple of 1024. Common values: 1024 or 2048. Defaults to 2048 bits. 
/// * [selector] - Selector for the new key pair 
@BuiltValue()
abstract class DKIMKeyPairCreateRequest implements Built<DKIMKeyPairCreateRequest, DKIMKeyPairCreateRequestBuilder> {
  /// Algorithm used for the new key pair Currently, only RSA is supported. 
  @BuiltValueField(wireName: r'algorithm')
  DKIMKeyPairCreateRequestAlgorithmEnum? get algorithm;
  // enum algorithmEnum {  rsa,  };

  /// Key length in bits. For RSA, must be a multiple of 1024. Common values: 1024 or 2048. Defaults to 2048 bits. 
  @BuiltValueField(wireName: r'key_length')
  int? get keyLength;

  /// Selector for the new key pair 
  @BuiltValueField(wireName: r'selector')
  String get selector;

  @override
  String toString() => 'DKIMKeyPairCreateRequest { [REDACTED] }';

  DKIMKeyPairCreateRequest._();

  factory DKIMKeyPairCreateRequest([void updates(DKIMKeyPairCreateRequestBuilder b)]) = _$DKIMKeyPairCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DKIMKeyPairCreateRequestBuilder b) => b
      ..algorithm = DKIMKeyPairCreateRequestAlgorithmEnum.valueOf('rsa')
      ..keyLength = 2048;

  @BuiltValueSerializer(custom: true)
  static Serializer<DKIMKeyPairCreateRequest> get serializer => _$DKIMKeyPairCreateRequestSerializer();
}

class _$DKIMKeyPairCreateRequestSerializer implements PrimitiveSerializer<DKIMKeyPairCreateRequest> {
  @override
  final Iterable<Type> types = const [DKIMKeyPairCreateRequest, _$DKIMKeyPairCreateRequest];

  @override
  final String wireName = r'DKIMKeyPairCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DKIMKeyPairCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.algorithm != null) {
      yield r'algorithm';
      yield serializers.serialize(
        object.algorithm,
        specifiedType: const FullType(DKIMKeyPairCreateRequestAlgorithmEnum),
      );
    }
    if (object.keyLength != null) {
      yield r'key_length';
      yield serializers.serialize(
        object.keyLength,
        specifiedType: const FullType(int),
      );
    }
    yield r'selector';
    yield serializers.serialize(
      object.selector,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DKIMKeyPairCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DKIMKeyPairCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'algorithm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DKIMKeyPairCreateRequestAlgorithmEnum),
          ) as DKIMKeyPairCreateRequestAlgorithmEnum?;
          if (valueDes == null) continue;
          result.algorithm = valueDes;
          break;
        case r'key_length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.keyLength = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selector = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DKIMKeyPairCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DKIMKeyPairCreateRequestBuilder();
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


/// Algorithm used for the new key pair Currently, only RSA is supported. 
class DKIMKeyPairCreateRequestAlgorithmEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'rsa')
  static const DKIMKeyPairCreateRequestAlgorithmEnum rsa = _$dKIMKeyPairCreateRequestAlgorithmEnum_rsa;

  static Serializer<DKIMKeyPairCreateRequestAlgorithmEnum> get serializer => _$dKIMKeyPairCreateRequestAlgorithmEnumSerializer;

  const DKIMKeyPairCreateRequestAlgorithmEnum._(String name): super(name);

  static BuiltSet<DKIMKeyPairCreateRequestAlgorithmEnum> get values => _$dKIMKeyPairCreateRequestAlgorithmEnumValues;
  static DKIMKeyPairCreateRequestAlgorithmEnum valueOf(String name) => _$dKIMKeyPairCreateRequestAlgorithmEnumValueOf(name);
}


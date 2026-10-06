//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sub_account_data.g.dart';

/// SubAccountData
///
/// Properties:
/// * [companyName] - The name of the company associated with the sub-account. This name is used for display purposes only and does not affect the functionality of the sub-account. The length must be between 3 and 128 characters. 
/// * [handle] - A unique name for the sub-account to be created. The length must be between 3 and 128 characters, and it may contain only lowercase letters and numbers. If not provided, a random handle will be generated. 
@BuiltValue()
abstract class SubAccountData implements Built<SubAccountData, SubAccountDataBuilder> {
  /// The name of the company associated with the sub-account. This name is used for display purposes only and does not affect the functionality of the sub-account. The length must be between 3 and 128 characters. 
  @BuiltValueField(wireName: r'company_name')
  String get companyName;

  /// A unique name for the sub-account to be created. The length must be between 3 and 128 characters, and it may contain only lowercase letters and numbers. If not provided, a random handle will be generated. 
  @BuiltValueField(wireName: r'handle')
  String? get handle;

  @override
  String toString() => 'SubAccountData { [REDACTED] }';

  SubAccountData._();

  factory SubAccountData([void updates(SubAccountDataBuilder b)]) = _$SubAccountData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubAccountDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubAccountData> get serializer => _$SubAccountDataSerializer();
}

class _$SubAccountDataSerializer implements PrimitiveSerializer<SubAccountData> {
  @override
  final Iterable<Type> types = const [SubAccountData, _$SubAccountData];

  @override
  final String wireName = r'SubAccountData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubAccountData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'company_name';
    yield serializers.serialize(
      object.companyName,
      specifiedType: const FullType(String),
    );
    if (object.handle != null) {
      yield r'handle';
      yield serializers.serialize(
        object.handle,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubAccountData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubAccountDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'company_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.companyName = valueDes;
          break;
        case r'handle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.handle = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubAccountData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubAccountDataBuilder();
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



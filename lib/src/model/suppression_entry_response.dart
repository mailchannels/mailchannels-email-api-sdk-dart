//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression_entry_response.g.dart';

/// SuppressionEntryResponse
///
/// Properties:
/// * [createdAt] 
/// * [notes] 
/// * [recipient] 
/// * [sender] 
/// * [source_] 
/// * [suppressionTypes] 
@BuiltValue()
abstract class SuppressionEntryResponse implements Built<SuppressionEntryResponse, SuppressionEntryResponseBuilder> {
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'recipient')
  String get recipient;

  @BuiltValueField(wireName: r'sender')
  String? get sender;

  @BuiltValueField(wireName: r'source')
  SuppressionEntryResponseSource_Enum? get source_;
  // enum source_Enum {  api,  unsubscribe_link,  list_unsubscribe,  hard_bounce,  spam_complaint,  };

  @BuiltValueField(wireName: r'suppression_types')
  BuiltList<SuppressionEntryResponseSuppressionTypesEnum>? get suppressionTypes;
  // enum suppressionTypesEnum {  transactional,  non-transactional,  };

  @override
  String toString() => 'SuppressionEntryResponse { [REDACTED] }';

  SuppressionEntryResponse._();

  factory SuppressionEntryResponse([void updates(SuppressionEntryResponseBuilder b)]) = _$SuppressionEntryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionEntryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuppressionEntryResponse> get serializer => _$SuppressionEntryResponseSerializer();
}

class _$SuppressionEntryResponseSerializer implements PrimitiveSerializer<SuppressionEntryResponse> {
  @override
  final Iterable<Type> types = const [SuppressionEntryResponse, _$SuppressionEntryResponse];

  @override
  final String wireName = r'SuppressionEntryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuppressionEntryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'recipient';
    yield serializers.serialize(
      object.recipient,
      specifiedType: const FullType(String),
    );
    if (object.sender != null) {
      yield r'sender';
      yield serializers.serialize(
        object.sender,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(SuppressionEntryResponseSource_Enum),
      );
    }
    if (object.suppressionTypes != null) {
      yield r'suppression_types';
      yield serializers.serialize(
        object.suppressionTypes,
        specifiedType: const FullType(BuiltList, [FullType(SuppressionEntryResponseSuppressionTypesEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SuppressionEntryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionEntryResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        case r'recipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipient = valueDes;
          break;
        case r'sender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sender = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SuppressionEntryResponseSource_Enum),
          ) as SuppressionEntryResponseSource_Enum?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'suppression_types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(SuppressionEntryResponseSuppressionTypesEnum)]),
          ) as BuiltList<SuppressionEntryResponseSuppressionTypesEnum>?;
          if (valueDes == null) continue;
          result.suppressionTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SuppressionEntryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionEntryResponseBuilder();
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


class SuppressionEntryResponseSource_Enum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'api')
  static const SuppressionEntryResponseSource_Enum api = _$suppressionEntryResponseSourceEnum_api;
  @BuiltValueEnumConst(wireName: r'unsubscribe_link')
  static const SuppressionEntryResponseSource_Enum unsubscribeLink = _$suppressionEntryResponseSourceEnum_unsubscribeLink;
  @BuiltValueEnumConst(wireName: r'list_unsubscribe')
  static const SuppressionEntryResponseSource_Enum listUnsubscribe = _$suppressionEntryResponseSourceEnum_listUnsubscribe;
  @BuiltValueEnumConst(wireName: r'hard_bounce')
  static const SuppressionEntryResponseSource_Enum hardBounce = _$suppressionEntryResponseSourceEnum_hardBounce;
  @BuiltValueEnumConst(wireName: r'spam_complaint')
  static const SuppressionEntryResponseSource_Enum spamComplaint = _$suppressionEntryResponseSourceEnum_spamComplaint;

  static Serializer<SuppressionEntryResponseSource_Enum> get serializer => _$suppressionEntryResponseSourceEnumSerializer;

  const SuppressionEntryResponseSource_Enum._(String name): super(name);

  static BuiltSet<SuppressionEntryResponseSource_Enum> get values => _$suppressionEntryResponseSourceEnumValues;
  static SuppressionEntryResponseSource_Enum valueOf(String name) => _$suppressionEntryResponseSourceEnumValueOf(name);
}

class SuppressionEntryResponseSuppressionTypesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'transactional')
  static const SuppressionEntryResponseSuppressionTypesEnum transactional = _$suppressionEntryResponseSuppressionTypesEnum_transactional;
  @BuiltValueEnumConst(wireName: r'non-transactional')
  static const SuppressionEntryResponseSuppressionTypesEnum nonTransactional = _$suppressionEntryResponseSuppressionTypesEnum_nonTransactional;

  static Serializer<SuppressionEntryResponseSuppressionTypesEnum> get serializer => _$suppressionEntryResponseSuppressionTypesEnumSerializer;

  const SuppressionEntryResponseSuppressionTypesEnum._(String name): super(name);

  static BuiltSet<SuppressionEntryResponseSuppressionTypesEnum> get values => _$suppressionEntryResponseSuppressionTypesEnumValues;
  static SuppressionEntryResponseSuppressionTypesEnum valueOf(String name) => _$suppressionEntryResponseSuppressionTypesEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression_entry.g.dart';

/// SuppressionEntry
///
/// Properties:
/// * [notes] 
/// * [recipient] 
/// * [suppressionTypes] 
@BuiltValue()
abstract class SuppressionEntry implements Built<SuppressionEntry, SuppressionEntryBuilder> {
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'recipient')
  String get recipient;

  @BuiltValueField(wireName: r'suppression_types')
  BuiltList<SuppressionEntrySuppressionTypesEnum>? get suppressionTypes;
  // enum suppressionTypesEnum {  transactional,  non-transactional,  };

  @override
  String toString() => 'SuppressionEntry { [REDACTED] }';

  SuppressionEntry._();

  factory SuppressionEntry([void updates(SuppressionEntryBuilder b)]) = _$SuppressionEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuppressionEntry> get serializer => _$SuppressionEntrySerializer();
}

class _$SuppressionEntrySerializer implements PrimitiveSerializer<SuppressionEntry> {
  @override
  final Iterable<Type> types = const [SuppressionEntry, _$SuppressionEntry];

  @override
  final String wireName = r'SuppressionEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuppressionEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.suppressionTypes != null) {
      yield r'suppression_types';
      yield serializers.serialize(
        object.suppressionTypes,
        specifiedType: const FullType(BuiltList, [FullType(SuppressionEntrySuppressionTypesEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SuppressionEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'suppression_types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(SuppressionEntrySuppressionTypesEnum)]),
          ) as BuiltList<SuppressionEntrySuppressionTypesEnum>?;
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
  SuppressionEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionEntryBuilder();
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


class SuppressionEntrySuppressionTypesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'transactional')
  static const SuppressionEntrySuppressionTypesEnum transactional = _$suppressionEntrySuppressionTypesEnum_transactional;
  @BuiltValueEnumConst(wireName: r'non-transactional')
  static const SuppressionEntrySuppressionTypesEnum nonTransactional = _$suppressionEntrySuppressionTypesEnum_nonTransactional;

  static Serializer<SuppressionEntrySuppressionTypesEnum> get serializer => _$suppressionEntrySuppressionTypesEnumSerializer;

  const SuppressionEntrySuppressionTypesEnum._(String name): super(name);

  static BuiltSet<SuppressionEntrySuppressionTypesEnum> get values => _$suppressionEntrySuppressionTypesEnumValues;
  static SuppressionEntrySuppressionTypesEnum valueOf(String name) => _$suppressionEntrySuppressionTypesEnumValueOf(name);
}


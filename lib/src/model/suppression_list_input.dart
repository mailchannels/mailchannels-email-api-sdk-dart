//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/suppression_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression_list_input.g.dart';

/// SuppressionListInput
///
/// Properties:
/// * [addToSubAccounts] - If true, the parent account creates suppression entries for all associated sub-accounts. This field is only applicable to parent accounts. Sub-accounts cannot create entries for other sub-accounts. 
/// * [suppressionEntries] - The total number of suppression entries to create, for the parent and/or its sub-accounts, must not exceed 1000.
@BuiltValue()
abstract class SuppressionListInput implements Built<SuppressionListInput, SuppressionListInputBuilder> {
  /// If true, the parent account creates suppression entries for all associated sub-accounts. This field is only applicable to parent accounts. Sub-accounts cannot create entries for other sub-accounts. 
  @BuiltValueField(wireName: r'add_to_sub_accounts')
  bool? get addToSubAccounts;

  /// The total number of suppression entries to create, for the parent and/or its sub-accounts, must not exceed 1000.
  @BuiltValueField(wireName: r'suppression_entries')
  BuiltList<SuppressionEntry> get suppressionEntries;

  @override
  String toString() => 'SuppressionListInput { [REDACTED] }';

  SuppressionListInput._();

  factory SuppressionListInput([void updates(SuppressionListInputBuilder b)]) = _$SuppressionListInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionListInputBuilder b) => b
      ..addToSubAccounts = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuppressionListInput> get serializer => _$SuppressionListInputSerializer();
}

class _$SuppressionListInputSerializer implements PrimitiveSerializer<SuppressionListInput> {
  @override
  final Iterable<Type> types = const [SuppressionListInput, _$SuppressionListInput];

  @override
  final String wireName = r'SuppressionListInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuppressionListInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.addToSubAccounts != null) {
      yield r'add_to_sub_accounts';
      yield serializers.serialize(
        object.addToSubAccounts,
        specifiedType: const FullType(bool),
      );
    }
    yield r'suppression_entries';
    yield serializers.serialize(
      object.suppressionEntries,
      specifiedType: const FullType(BuiltList, [FullType(SuppressionEntry)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SuppressionListInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionListInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'add_to_sub_accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.addToSubAccounts = valueDes;
          break;
        case r'suppression_entries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SuppressionEntry)]),
          ) as BuiltList<SuppressionEntry>;
          result.suppressionEntries.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SuppressionListInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionListInputBuilder();
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



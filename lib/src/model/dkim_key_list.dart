//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/dkim_key_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dkim_key_list.g.dart';

/// DKIMKeyList
///
/// Properties:
/// * [keys] - List of keys matching the filter. Empty if no keys match the filter. 
@BuiltValue()
abstract class DKIMKeyList implements Built<DKIMKeyList, DKIMKeyListBuilder> {
  /// List of keys matching the filter. Empty if no keys match the filter. 
  @BuiltValueField(wireName: r'keys')
  BuiltList<DKIMKeyInfo> get keys;

  @override
  String toString() => 'DKIMKeyList { [REDACTED] }';

  DKIMKeyList._();

  factory DKIMKeyList([void updates(DKIMKeyListBuilder b)]) = _$DKIMKeyList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DKIMKeyListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DKIMKeyList> get serializer => _$DKIMKeyListSerializer();
}

class _$DKIMKeyListSerializer implements PrimitiveSerializer<DKIMKeyList> {
  @override
  final Iterable<Type> types = const [DKIMKeyList, _$DKIMKeyList];

  @override
  final String wireName = r'DKIMKeyList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DKIMKeyList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'keys';
    yield serializers.serialize(
      object.keys,
      specifiedType: const FullType(BuiltList, [FullType(DKIMKeyInfo)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DKIMKeyList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DKIMKeyListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DKIMKeyInfo)]),
          ) as BuiltList<DKIMKeyInfo>;
          result.keys.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DKIMKeyList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DKIMKeyListBuilder();
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



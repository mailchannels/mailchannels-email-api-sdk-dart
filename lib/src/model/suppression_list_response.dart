//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/suppression_entry_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression_list_response.g.dart';

/// SuppressionListResponse
///
/// Properties:
/// * [suppressionList] 
@BuiltValue()
abstract class SuppressionListResponse implements Built<SuppressionListResponse, SuppressionListResponseBuilder> {
  @BuiltValueField(wireName: r'suppression_list')
  BuiltList<SuppressionEntryResponse> get suppressionList;

  @override
  String toString() => 'SuppressionListResponse { [REDACTED] }';

  SuppressionListResponse._();

  factory SuppressionListResponse([void updates(SuppressionListResponseBuilder b)]) = _$SuppressionListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuppressionListResponse> get serializer => _$SuppressionListResponseSerializer();
}

class _$SuppressionListResponseSerializer implements PrimitiveSerializer<SuppressionListResponse> {
  @override
  final Iterable<Type> types = const [SuppressionListResponse, _$SuppressionListResponse];

  @override
  final String wireName = r'SuppressionListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuppressionListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'suppression_list';
    yield serializers.serialize(
      object.suppressionList,
      specifiedType: const FullType(BuiltList, [FullType(SuppressionEntryResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SuppressionListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'suppression_list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SuppressionEntryResponse)]),
          ) as BuiltList<SuppressionEntryResponse>;
          result.suppressionList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SuppressionListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionListResponseBuilder();
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



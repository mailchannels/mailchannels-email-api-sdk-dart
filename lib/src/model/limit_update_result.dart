//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/limit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'limit_update_result.g.dart';

/// LimitUpdateResult
///
/// Properties:
/// * [limit] 
@BuiltValue()
abstract class LimitUpdateResult implements Built<LimitUpdateResult, LimitUpdateResultBuilder> {
  @BuiltValueField(wireName: r'limit')
  Limit? get limit;

  @override
  String toString() => 'LimitUpdateResult { [REDACTED] }';

  LimitUpdateResult._();

  factory LimitUpdateResult([void updates(LimitUpdateResultBuilder b)]) = _$LimitUpdateResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LimitUpdateResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LimitUpdateResult> get serializer => _$LimitUpdateResultSerializer();
}

class _$LimitUpdateResultSerializer implements PrimitiveSerializer<LimitUpdateResult> {
  @override
  final Iterable<Type> types = const [LimitUpdateResult, _$LimitUpdateResult];

  @override
  final String wireName = r'LimitUpdateResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LimitUpdateResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(Limit),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LimitUpdateResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LimitUpdateResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Limit),
          ) as Limit?;
          if (valueDes == null) continue;
          result.limit.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LimitUpdateResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LimitUpdateResultBuilder();
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



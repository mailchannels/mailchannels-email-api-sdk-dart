//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_batch_duration.g.dart';

/// Duration of the webhook batch. measured from the time the request was sent to the webhook endpoint until the response was received. 
///
/// Properties:
/// * [unit] 
/// * [value] 
@BuiltValue()
abstract class WebhookBatchDuration implements Built<WebhookBatchDuration, WebhookBatchDurationBuilder> {
  @BuiltValueField(wireName: r'unit')
  WebhookBatchDurationUnitEnum get unit;
  // enum unitEnum {  milliseconds,  };

  @BuiltValueField(wireName: r'value')
  int get value;

  @override
  String toString() => 'WebhookBatchDuration { [REDACTED] }';

  WebhookBatchDuration._();

  factory WebhookBatchDuration([void updates(WebhookBatchDurationBuilder b)]) = _$WebhookBatchDuration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookBatchDurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookBatchDuration> get serializer => _$WebhookBatchDurationSerializer();
}

class _$WebhookBatchDurationSerializer implements PrimitiveSerializer<WebhookBatchDuration> {
  @override
  final Iterable<Type> types = const [WebhookBatchDuration, _$WebhookBatchDuration];

  @override
  final String wireName = r'WebhookBatchDuration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookBatchDuration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'unit';
    yield serializers.serialize(
      object.unit,
      specifiedType: const FullType(WebhookBatchDurationUnitEnum),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookBatchDuration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookBatchDurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebhookBatchDurationUnitEnum),
          ) as WebhookBatchDurationUnitEnum;
          result.unit = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  WebhookBatchDuration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookBatchDurationBuilder();
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


class WebhookBatchDurationUnitEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'milliseconds')
  static const WebhookBatchDurationUnitEnum milliseconds = _$webhookBatchDurationUnitEnum_milliseconds;

  static Serializer<WebhookBatchDurationUnitEnum> get serializer => _$webhookBatchDurationUnitEnumSerializer;

  const WebhookBatchDurationUnitEnum._(String name): super(name);

  static BuiltSet<WebhookBatchDurationUnitEnum> get values => _$webhookBatchDurationUnitEnumValues;
  static WebhookBatchDurationUnitEnum valueOf(String name) => _$webhookBatchDurationUnitEnumValueOf(name);
}


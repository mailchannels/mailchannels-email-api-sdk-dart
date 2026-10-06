//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/webhook_batch_duration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_batch.g.dart';

/// WebhookBatch
///
/// Properties:
/// * [batchId] - Unique identifier for the webhook batch 
/// * [createdAt] - Timestamp of when the webhook batch was created 
/// * [customerHandle] - Customer handle associated with the webhook batch 
/// * [duration] 
/// * [eventCount] - Number of events in the webhook batch 
/// * [status] - Status of the webhook batch. no_response: no response returned from the webhook endpoint. 
/// * [statusCode] - HTTP status code returned by the webhook endpoint 
/// * [webhook] - Webhook endpoint to which events in the batch were posted
@BuiltValue()
abstract class WebhookBatch implements Built<WebhookBatch, WebhookBatchBuilder> {
  /// Unique identifier for the webhook batch 
  @BuiltValueField(wireName: r'batch_id')
  int get batchId;

  /// Timestamp of when the webhook batch was created 
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Customer handle associated with the webhook batch 
  @BuiltValueField(wireName: r'customer_handle')
  String get customerHandle;

  @BuiltValueField(wireName: r'duration')
  WebhookBatchDuration? get duration;

  /// Number of events in the webhook batch 
  @BuiltValueField(wireName: r'event_count')
  int get eventCount;

  /// Status of the webhook batch. no_response: no response returned from the webhook endpoint. 
  @BuiltValueField(wireName: r'status')
  WebhookBatchStatusEnum get status;
  // enum statusEnum {  1xx_response,  2xx_response,  3xx_response,  4xx_response,  5xx_response,  no_response,  };

  /// HTTP status code returned by the webhook endpoint 
  @BuiltValueField(wireName: r'status_code')
  int? get statusCode;

  /// Webhook endpoint to which events in the batch were posted
  @BuiltValueField(wireName: r'webhook')
  String get webhook;

  @override
  String toString() => 'WebhookBatch { [REDACTED] }';

  WebhookBatch._();

  factory WebhookBatch([void updates(WebhookBatchBuilder b)]) = _$WebhookBatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookBatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookBatch> get serializer => _$WebhookBatchSerializer();
}

class _$WebhookBatchSerializer implements PrimitiveSerializer<WebhookBatch> {
  @override
  final Iterable<Type> types = const [WebhookBatch, _$WebhookBatch];

  @override
  final String wireName = r'WebhookBatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'batch_id';
    yield serializers.serialize(
      object.batchId,
      specifiedType: const FullType(int),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'customer_handle';
    yield serializers.serialize(
      object.customerHandle,
      specifiedType: const FullType(String),
    );
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(WebhookBatchDuration),
      );
    }
    yield r'event_count';
    yield serializers.serialize(
      object.eventCount,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(WebhookBatchStatusEnum),
    );
    if (object.statusCode != null) {
      yield r'status_code';
      yield serializers.serialize(
        object.statusCode,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'webhook';
    yield serializers.serialize(
      object.webhook,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookBatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'batch_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.batchId = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'customer_handle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerHandle = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WebhookBatchDuration),
          ) as WebhookBatchDuration?;
          if (valueDes == null) continue;
          result.duration.replace(valueDes);
          break;
        case r'event_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.eventCount = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebhookBatchStatusEnum),
          ) as WebhookBatchStatusEnum;
          result.status = valueDes;
          break;
        case r'status_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.statusCode = valueDes;
          break;
        case r'webhook':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.webhook = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookBatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookBatchBuilder();
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


/// Status of the webhook batch. no_response: no response returned from the webhook endpoint. 
class WebhookBatchStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'1xx_response')
  static const WebhookBatchStatusEnum n1xxResponse = _$webhookBatchStatusEnum_n1xxResponse;
  @BuiltValueEnumConst(wireName: r'2xx_response')
  static const WebhookBatchStatusEnum n2xxResponse = _$webhookBatchStatusEnum_n2xxResponse;
  @BuiltValueEnumConst(wireName: r'3xx_response')
  static const WebhookBatchStatusEnum n3xxResponse = _$webhookBatchStatusEnum_n3xxResponse;
  @BuiltValueEnumConst(wireName: r'4xx_response')
  static const WebhookBatchStatusEnum n4xxResponse = _$webhookBatchStatusEnum_n4xxResponse;
  @BuiltValueEnumConst(wireName: r'5xx_response')
  static const WebhookBatchStatusEnum n5xxResponse = _$webhookBatchStatusEnum_n5xxResponse;
  @BuiltValueEnumConst(wireName: r'no_response')
  static const WebhookBatchStatusEnum noResponse = _$webhookBatchStatusEnum_noResponse;

  static Serializer<WebhookBatchStatusEnum> get serializer => _$webhookBatchStatusEnumSerializer;

  const WebhookBatchStatusEnum._(String name): super(name);

  static BuiltSet<WebhookBatchStatusEnum> get values => _$webhookBatchStatusEnumValues;
  static WebhookBatchStatusEnum valueOf(String name) => _$webhookBatchStatusEnumValueOf(name);
}


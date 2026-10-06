//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_resend_response.g.dart';

/// WebhookResendResponse
///
/// Properties:
/// * [batchId] - Unique identifier for the webhook batch 
/// * [createdAt] - Timestamp of when the webhook batch was created
/// * [customerHandle] - Customer handle associated with the webhook batch
/// * [durationInMs] - Duration of the webhook batch in milliseconds, measured from the time the request was sent to the webhook endpoint until the response was received. Null indicates that no response was returned from the webhook endpoint. 
/// * [eventCount] - Number of events in the webhook batch
/// * [statusCode] - HTTP status code returned by the webhook endpoint. Valid values are 100-599. Null indicates that no response was returned from the webhook endpoint. 
/// * [webhook] - Webhook URL to which events in the batch were posted
@BuiltValue()
abstract class WebhookResendResponse implements Built<WebhookResendResponse, WebhookResendResponseBuilder> {
  /// Unique identifier for the webhook batch 
  @BuiltValueField(wireName: r'batch_id')
  int get batchId;

  /// Timestamp of when the webhook batch was created
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Customer handle associated with the webhook batch
  @BuiltValueField(wireName: r'customer_handle')
  String get customerHandle;

  /// Duration of the webhook batch in milliseconds, measured from the time the request was sent to the webhook endpoint until the response was received. Null indicates that no response was returned from the webhook endpoint. 
  @BuiltValueField(wireName: r'duration_in_ms')
  int? get durationInMs;

  /// Number of events in the webhook batch
  @BuiltValueField(wireName: r'event_count')
  int get eventCount;

  /// HTTP status code returned by the webhook endpoint. Valid values are 100-599. Null indicates that no response was returned from the webhook endpoint. 
  @BuiltValueField(wireName: r'status_code')
  int? get statusCode;

  /// Webhook URL to which events in the batch were posted
  @BuiltValueField(wireName: r'webhook')
  String get webhook;

  @override
  String toString() => 'WebhookResendResponse { [REDACTED] }';

  WebhookResendResponse._();

  factory WebhookResendResponse([void updates(WebhookResendResponseBuilder b)]) = _$WebhookResendResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookResendResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookResendResponse> get serializer => _$WebhookResendResponseSerializer();
}

class _$WebhookResendResponseSerializer implements PrimitiveSerializer<WebhookResendResponse> {
  @override
  final Iterable<Type> types = const [WebhookResendResponse, _$WebhookResendResponse];

  @override
  final String wireName = r'WebhookResendResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookResendResponse object, {
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
    if (object.durationInMs != null) {
      yield r'duration_in_ms';
      yield serializers.serialize(
        object.durationInMs,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'event_count';
    yield serializers.serialize(
      object.eventCount,
      specifiedType: const FullType(int),
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
    WebhookResendResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookResendResponseBuilder result,
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
        case r'duration_in_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.durationInMs = valueDes;
          break;
        case r'event_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.eventCount = valueDes;
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
  WebhookResendResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookResendResponseBuilder();
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



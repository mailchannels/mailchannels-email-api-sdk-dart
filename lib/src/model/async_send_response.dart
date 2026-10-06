//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'async_send_response.g.dart';

/// AsyncSendResponse
///
/// Properties:
/// * [queuedAt] - ISO 8601 timestamp when the request was queued for processing. 
/// * [requestId] - Unique identifier for tracking this async request. Will be included in all webhook events for this request. 
@BuiltValue()
abstract class AsyncSendResponse implements Built<AsyncSendResponse, AsyncSendResponseBuilder> {
  /// ISO 8601 timestamp when the request was queued for processing. 
  @BuiltValueField(wireName: r'queued_at')
  DateTime get queuedAt;

  /// Unique identifier for tracking this async request. Will be included in all webhook events for this request. 
  @BuiltValueField(wireName: r'request_id')
  String get requestId;

  @override
  String toString() => 'AsyncSendResponse { [REDACTED] }';

  AsyncSendResponse._();

  factory AsyncSendResponse([void updates(AsyncSendResponseBuilder b)]) = _$AsyncSendResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AsyncSendResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AsyncSendResponse> get serializer => _$AsyncSendResponseSerializer();
}

class _$AsyncSendResponseSerializer implements PrimitiveSerializer<AsyncSendResponse> {
  @override
  final Iterable<Type> types = const [AsyncSendResponse, _$AsyncSendResponse];

  @override
  final String wireName = r'AsyncSendResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AsyncSendResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'queued_at';
    yield serializers.serialize(
      object.queuedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'request_id';
    yield serializers.serialize(
      object.requestId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AsyncSendResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AsyncSendResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'queued_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.queuedAt = valueDes;
          break;
        case r'request_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AsyncSendResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AsyncSendResponseBuilder();
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



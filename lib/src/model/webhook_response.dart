//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_response.g.dart';

/// The HTTP response returned by the webhook, including status code and response body. A null value indicates no response was received. Possible reasons include timeouts, connection failures, or other network-related issues. 
///
/// Properties:
/// * [body] - Response body from webhook. Returns an error if unprocessable or too large. 
/// * [status] - HTTP status code returned by the webhook 
@BuiltValue()
abstract class WebhookResponse implements Built<WebhookResponse, WebhookResponseBuilder> {
  /// Response body from webhook. Returns an error if unprocessable or too large. 
  @BuiltValueField(wireName: r'body')
  String? get body;

  /// HTTP status code returned by the webhook 
  @BuiltValueField(wireName: r'status')
  int get status;

  @override
  String toString() => 'WebhookResponse { [REDACTED] }';

  WebhookResponse._();

  factory WebhookResponse([void updates(WebhookResponseBuilder b)]) = _$WebhookResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookResponse> get serializer => _$WebhookResponseSerializer();
}

class _$WebhookResponseSerializer implements PrimitiveSerializer<WebhookResponse> {
  @override
  final Iterable<Type> types = const [WebhookResponse, _$WebhookResponse];

  @override
  final String wireName = r'WebhookResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookResponseBuilder();
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



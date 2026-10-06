//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_validation_request_body.g.dart';

/// WebhookValidationRequestBody
///
/// Properties:
/// * [requestId] - Optional identifier in the webhook payload. If not provided, a value will be automatically generated. 
@BuiltValue()
abstract class WebhookValidationRequestBody implements Built<WebhookValidationRequestBody, WebhookValidationRequestBodyBuilder> {
  /// Optional identifier in the webhook payload. If not provided, a value will be automatically generated. 
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @override
  String toString() => 'WebhookValidationRequestBody { [REDACTED] }';

  WebhookValidationRequestBody._();

  factory WebhookValidationRequestBody([void updates(WebhookValidationRequestBodyBuilder b)]) = _$WebhookValidationRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookValidationRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookValidationRequestBody> get serializer => _$WebhookValidationRequestBodySerializer();
}

class _$WebhookValidationRequestBodySerializer implements PrimitiveSerializer<WebhookValidationRequestBody> {
  @override
  final Iterable<Type> types = const [WebhookValidationRequestBody, _$WebhookValidationRequestBody];

  @override
  final String wireName = r'WebhookValidationRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookValidationRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.requestId != null) {
      yield r'request_id';
      yield serializers.serialize(
        object.requestId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookValidationRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookValidationRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'request_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  WebhookValidationRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookValidationRequestBodyBuilder();
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



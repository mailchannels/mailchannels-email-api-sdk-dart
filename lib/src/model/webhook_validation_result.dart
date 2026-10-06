//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/webhook_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_validation_result.g.dart';

/// WebhookValidationResult
///
/// Properties:
/// * [response] 
/// * [result] - Indicates whether the webhook responded with a 2xx HTTP status code 
/// * [webhook] - The webhook that was validated 
@BuiltValue()
abstract class WebhookValidationResult implements Built<WebhookValidationResult, WebhookValidationResultBuilder> {
  @BuiltValueField(wireName: r'response')
  WebhookResponse? get response;

  /// Indicates whether the webhook responded with a 2xx HTTP status code 
  @BuiltValueField(wireName: r'result')
  WebhookValidationResultResultEnum get result;
  // enum resultEnum {  passed,  failed,  };

  /// The webhook that was validated 
  @BuiltValueField(wireName: r'webhook')
  String get webhook;

  @override
  String toString() => 'WebhookValidationResult { [REDACTED] }';

  WebhookValidationResult._();

  factory WebhookValidationResult([void updates(WebhookValidationResultBuilder b)]) = _$WebhookValidationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookValidationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookValidationResult> get serializer => _$WebhookValidationResultSerializer();
}

class _$WebhookValidationResultSerializer implements PrimitiveSerializer<WebhookValidationResult> {
  @override
  final Iterable<Type> types = const [WebhookValidationResult, _$WebhookValidationResult];

  @override
  final String wireName = r'WebhookValidationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookValidationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'response';
    yield object.response == null ? null : serializers.serialize(
      object.response,
      specifiedType: const FullType.nullable(WebhookResponse),
    );
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(WebhookValidationResultResultEnum),
    );
    yield r'webhook';
    yield serializers.serialize(
      object.webhook,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookValidationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookValidationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'response':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WebhookResponse),
          ) as WebhookResponse?;
          if (valueDes == null) continue;
          result.response.replace(valueDes);
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebhookValidationResultResultEnum),
          ) as WebhookValidationResultResultEnum;
          result.result = valueDes;
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
  WebhookValidationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookValidationResultBuilder();
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


/// Indicates whether the webhook responded with a 2xx HTTP status code 
class WebhookValidationResultResultEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'passed')
  static const WebhookValidationResultResultEnum passed = _$webhookValidationResultResultEnum_passed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const WebhookValidationResultResultEnum failed = _$webhookValidationResultResultEnum_failed;

  static Serializer<WebhookValidationResultResultEnum> get serializer => _$webhookValidationResultResultEnumSerializer;

  const WebhookValidationResultResultEnum._(String name): super(name);

  static BuiltSet<WebhookValidationResultResultEnum> get values => _$webhookValidationResultResultEnumValues;
  static WebhookValidationResultResultEnum valueOf(String name) => _$webhookValidationResultResultEnumValueOf(name);
}


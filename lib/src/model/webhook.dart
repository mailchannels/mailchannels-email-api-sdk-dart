//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook.g.dart';

/// Webhook
///
/// Properties:
/// * [webhook] - A customer's webhook that events will be sent to
@BuiltValue()
abstract class Webhook implements Built<Webhook, WebhookBuilder> {
  /// A customer's webhook that events will be sent to
  @BuiltValueField(wireName: r'webhook')
  String get webhook;

  @override
  String toString() => 'Webhook { [REDACTED] }';

  Webhook._();

  factory Webhook([void updates(WebhookBuilder b)]) = _$Webhook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Webhook> get serializer => _$WebhookSerializer();
}

class _$WebhookSerializer implements PrimitiveSerializer<Webhook> {
  @override
  final Iterable<Type> types = const [Webhook, _$Webhook];

  @override
  final String wireName = r'Webhook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Webhook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'webhook';
    yield serializers.serialize(
      object.webhook,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Webhook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  Webhook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookBuilder();
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



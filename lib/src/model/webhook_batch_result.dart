//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/webhook_batch.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_batch_result.g.dart';

/// WebhookBatchResult
///
/// Properties:
/// * [webhookBatches] - List of webhook batches matching the filter. Empty if no webhook batches match the filter. 
@BuiltValue()
abstract class WebhookBatchResult implements Built<WebhookBatchResult, WebhookBatchResultBuilder> {
  /// List of webhook batches matching the filter. Empty if no webhook batches match the filter. 
  @BuiltValueField(wireName: r'webhook_batches')
  BuiltList<WebhookBatch> get webhookBatches;

  @override
  String toString() => 'WebhookBatchResult { [REDACTED] }';

  WebhookBatchResult._();

  factory WebhookBatchResult([void updates(WebhookBatchResultBuilder b)]) = _$WebhookBatchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookBatchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookBatchResult> get serializer => _$WebhookBatchResultSerializer();
}

class _$WebhookBatchResultSerializer implements PrimitiveSerializer<WebhookBatchResult> {
  @override
  final Iterable<Type> types = const [WebhookBatchResult, _$WebhookBatchResult];

  @override
  final String wireName = r'WebhookBatchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookBatchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'webhook_batches';
    yield serializers.serialize(
      object.webhookBatches,
      specifiedType: const FullType(BuiltList, [FullType(WebhookBatch)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookBatchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookBatchResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'webhook_batches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WebhookBatch)]),
          ) as BuiltList<WebhookBatch>;
          result.webhookBatches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookBatchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookBatchResultBuilder();
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



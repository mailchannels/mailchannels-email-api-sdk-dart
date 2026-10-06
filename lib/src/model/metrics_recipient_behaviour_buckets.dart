//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/metrics_bucket.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_recipient_behaviour_buckets.g.dart';

/// A series of metrics aggregations bucketed by time interval (e.g. hour, day)
///
/// Properties:
/// * [unsubscribeDelivered] 
/// * [unsubscribed] 
@BuiltValue()
abstract class MetricsRecipientBehaviourBuckets implements Built<MetricsRecipientBehaviourBuckets, MetricsRecipientBehaviourBucketsBuilder> {
  @BuiltValueField(wireName: r'unsubscribe_delivered')
  BuiltList<MetricsBucket> get unsubscribeDelivered;

  @BuiltValueField(wireName: r'unsubscribed')
  BuiltList<MetricsBucket> get unsubscribed;

  @override
  String toString() => 'MetricsRecipientBehaviourBuckets { [REDACTED] }';

  MetricsRecipientBehaviourBuckets._();

  factory MetricsRecipientBehaviourBuckets([void updates(MetricsRecipientBehaviourBucketsBuilder b)]) = _$MetricsRecipientBehaviourBuckets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsRecipientBehaviourBucketsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsRecipientBehaviourBuckets> get serializer => _$MetricsRecipientBehaviourBucketsSerializer();
}

class _$MetricsRecipientBehaviourBucketsSerializer implements PrimitiveSerializer<MetricsRecipientBehaviourBuckets> {
  @override
  final Iterable<Type> types = const [MetricsRecipientBehaviourBuckets, _$MetricsRecipientBehaviourBuckets];

  @override
  final String wireName = r'MetricsRecipientBehaviourBuckets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsRecipientBehaviourBuckets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'unsubscribe_delivered';
    yield serializers.serialize(
      object.unsubscribeDelivered,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
    yield r'unsubscribed';
    yield serializers.serialize(
      object.unsubscribed,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricsRecipientBehaviourBuckets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsRecipientBehaviourBucketsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'unsubscribe_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.unsubscribeDelivered.replace(valueDes);
          break;
        case r'unsubscribed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.unsubscribed.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricsRecipientBehaviourBuckets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsRecipientBehaviourBucketsBuilder();
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



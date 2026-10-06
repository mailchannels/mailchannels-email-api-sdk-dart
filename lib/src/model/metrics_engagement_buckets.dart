//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/metrics_bucket.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_engagement_buckets.g.dart';

/// A series of metrics aggregations bucketed by time interval (e.g. hour, day)
///
/// Properties:
/// * [click] 
/// * [clickTrackingDelivered] 
/// * [open] 
/// * [openTrackingDelivered] 
/// * [uniqueClick] 
/// * [uniqueClickTrackingDelivered] 
/// * [uniqueOpen] 
/// * [uniqueOpenTrackingDelivered] 
@BuiltValue()
abstract class MetricsEngagementBuckets implements Built<MetricsEngagementBuckets, MetricsEngagementBucketsBuilder> {
  @BuiltValueField(wireName: r'click')
  BuiltList<MetricsBucket> get click;

  @BuiltValueField(wireName: r'click_tracking_delivered')
  BuiltList<MetricsBucket> get clickTrackingDelivered;

  @BuiltValueField(wireName: r'open')
  BuiltList<MetricsBucket> get open;

  @BuiltValueField(wireName: r'open_tracking_delivered')
  BuiltList<MetricsBucket> get openTrackingDelivered;

  @BuiltValueField(wireName: r'unique_click')
  BuiltList<MetricsBucket>? get uniqueClick;

  @BuiltValueField(wireName: r'unique_click_tracking_delivered')
  BuiltList<MetricsBucket>? get uniqueClickTrackingDelivered;

  @BuiltValueField(wireName: r'unique_open')
  BuiltList<MetricsBucket>? get uniqueOpen;

  @BuiltValueField(wireName: r'unique_open_tracking_delivered')
  BuiltList<MetricsBucket>? get uniqueOpenTrackingDelivered;

  @override
  String toString() => 'MetricsEngagementBuckets { [REDACTED] }';

  MetricsEngagementBuckets._();

  factory MetricsEngagementBuckets([void updates(MetricsEngagementBucketsBuilder b)]) = _$MetricsEngagementBuckets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsEngagementBucketsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsEngagementBuckets> get serializer => _$MetricsEngagementBucketsSerializer();
}

class _$MetricsEngagementBucketsSerializer implements PrimitiveSerializer<MetricsEngagementBuckets> {
  @override
  final Iterable<Type> types = const [MetricsEngagementBuckets, _$MetricsEngagementBuckets];

  @override
  final String wireName = r'MetricsEngagementBuckets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsEngagementBuckets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'click';
    yield serializers.serialize(
      object.click,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
    yield r'click_tracking_delivered';
    yield serializers.serialize(
      object.clickTrackingDelivered,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
    yield r'open';
    yield serializers.serialize(
      object.open,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
    yield r'open_tracking_delivered';
    yield serializers.serialize(
      object.openTrackingDelivered,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
    if (object.uniqueClick != null) {
      yield r'unique_click';
      yield serializers.serialize(
        object.uniqueClick,
        specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
      );
    }
    if (object.uniqueClickTrackingDelivered != null) {
      yield r'unique_click_tracking_delivered';
      yield serializers.serialize(
        object.uniqueClickTrackingDelivered,
        specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
      );
    }
    if (object.uniqueOpen != null) {
      yield r'unique_open';
      yield serializers.serialize(
        object.uniqueOpen,
        specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
      );
    }
    if (object.uniqueOpenTrackingDelivered != null) {
      yield r'unique_open_tracking_delivered';
      yield serializers.serialize(
        object.uniqueOpenTrackingDelivered,
        specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricsEngagementBuckets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsEngagementBucketsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'click':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.click.replace(valueDes);
          break;
        case r'click_tracking_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.clickTrackingDelivered.replace(valueDes);
          break;
        case r'open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.open.replace(valueDes);
          break;
        case r'open_tracking_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.openTrackingDelivered.replace(valueDes);
          break;
        case r'unique_click':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>?;
          if (valueDes == null) continue;
          result.uniqueClick.replace(valueDes);
          break;
        case r'unique_click_tracking_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>?;
          if (valueDes == null) continue;
          result.uniqueClickTrackingDelivered.replace(valueDes);
          break;
        case r'unique_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>?;
          if (valueDes == null) continue;
          result.uniqueOpen.replace(valueDes);
          break;
        case r'unique_open_tracking_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>?;
          if (valueDes == null) continue;
          result.uniqueOpenTrackingDelivered.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricsEngagementBuckets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsEngagementBucketsBuilder();
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



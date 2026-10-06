//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/metrics_bucket.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_performance_buckets.g.dart';

/// A series of metrics aggregations bucketed by time interval (e.g. hour, day)
///
/// Properties:
/// * [bounced] 
/// * [complained] 
/// * [delivered] 
/// * [processed] 
@BuiltValue()
abstract class MetricsPerformanceBuckets implements Built<MetricsPerformanceBuckets, MetricsPerformanceBucketsBuilder> {
  @BuiltValueField(wireName: r'bounced')
  BuiltList<MetricsBucket> get bounced;

  @BuiltValueField(wireName: r'complained')
  BuiltList<MetricsBucket> get complained;

  @BuiltValueField(wireName: r'delivered')
  BuiltList<MetricsBucket> get delivered;

  @BuiltValueField(wireName: r'processed')
  BuiltList<MetricsBucket> get processed;

  @override
  String toString() => 'MetricsPerformanceBuckets { [REDACTED] }';

  MetricsPerformanceBuckets._();

  factory MetricsPerformanceBuckets([void updates(MetricsPerformanceBucketsBuilder b)]) = _$MetricsPerformanceBuckets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsPerformanceBucketsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsPerformanceBuckets> get serializer => _$MetricsPerformanceBucketsSerializer();
}

class _$MetricsPerformanceBucketsSerializer implements PrimitiveSerializer<MetricsPerformanceBuckets> {
  @override
  final Iterable<Type> types = const [MetricsPerformanceBuckets, _$MetricsPerformanceBuckets];

  @override
  final String wireName = r'MetricsPerformanceBuckets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsPerformanceBuckets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bounced';
    yield serializers.serialize(
      object.bounced,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
    yield r'complained';
    yield serializers.serialize(
      object.complained,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
    yield r'delivered';
    yield serializers.serialize(
      object.delivered,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
    yield r'processed';
    yield serializers.serialize(
      object.processed,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricsPerformanceBuckets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsPerformanceBucketsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bounced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.bounced.replace(valueDes);
          break;
        case r'complained':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.complained.replace(valueDes);
          break;
        case r'delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.delivered.replace(valueDes);
          break;
        case r'processed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.processed.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricsPerformanceBuckets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsPerformanceBucketsBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/metrics_bucket.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_volume_buckets.g.dart';

/// A series of metrics aggregations bucketed by time interval (e.g. hour, day)
///
/// Properties:
/// * [delivered] 
/// * [dropped] 
/// * [processed] 
@BuiltValue()
abstract class MetricsVolumeBuckets implements Built<MetricsVolumeBuckets, MetricsVolumeBucketsBuilder> {
  @BuiltValueField(wireName: r'delivered')
  BuiltList<MetricsBucket> get delivered;

  @BuiltValueField(wireName: r'dropped')
  BuiltList<MetricsBucket> get dropped;

  @BuiltValueField(wireName: r'processed')
  BuiltList<MetricsBucket> get processed;

  @override
  String toString() => 'MetricsVolumeBuckets { [REDACTED] }';

  MetricsVolumeBuckets._();

  factory MetricsVolumeBuckets([void updates(MetricsVolumeBucketsBuilder b)]) = _$MetricsVolumeBuckets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsVolumeBucketsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsVolumeBuckets> get serializer => _$MetricsVolumeBucketsSerializer();
}

class _$MetricsVolumeBucketsSerializer implements PrimitiveSerializer<MetricsVolumeBuckets> {
  @override
  final Iterable<Type> types = const [MetricsVolumeBuckets, _$MetricsVolumeBuckets];

  @override
  final String wireName = r'MetricsVolumeBuckets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsVolumeBuckets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'delivered';
    yield serializers.serialize(
      object.delivered,
      specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
    );
    yield r'dropped';
    yield serializers.serialize(
      object.dropped,
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
    MetricsVolumeBuckets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsVolumeBucketsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.delivered.replace(valueDes);
          break;
        case r'dropped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsBucket)]),
          ) as BuiltList<MetricsBucket>;
          result.dropped.replace(valueDes);
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
  MetricsVolumeBuckets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsVolumeBucketsBuilder();
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



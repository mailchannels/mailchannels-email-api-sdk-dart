//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_bucket.g.dart';

/// Represents a time-based bucket for aggregating metrics data. Each bucket corresponds to a specific time interval, with the `period_start` indicating the beginning of that interval. The `count` field represents the number of events or occurrences that fall within that time period. 
///
/// Properties:
/// * [count] - The number of events or occurrences aggregated within this time period.
/// * [periodStart] - The starting date and time of the time period this bucket represents.
@BuiltValue()
abstract class MetricsBucket implements Built<MetricsBucket, MetricsBucketBuilder> {
  /// The number of events or occurrences aggregated within this time period.
  @BuiltValueField(wireName: r'count')
  int get count;

  /// The starting date and time of the time period this bucket represents.
  @BuiltValueField(wireName: r'period_start')
  DateTime get periodStart;

  @override
  String toString() => 'MetricsBucket { [REDACTED] }';

  MetricsBucket._();

  factory MetricsBucket([void updates(MetricsBucketBuilder b)]) = _$MetricsBucket;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsBucketBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsBucket> get serializer => _$MetricsBucketSerializer();
}

class _$MetricsBucketSerializer implements PrimitiveSerializer<MetricsBucket> {
  @override
  final Iterable<Type> types = const [MetricsBucket, _$MetricsBucket];

  @override
  final String wireName = r'MetricsBucket';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsBucket object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'period_start';
    yield serializers.serialize(
      object.periodStart,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricsBucket object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsBucketBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'period_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.periodStart = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricsBucket deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsBucketBuilder();
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



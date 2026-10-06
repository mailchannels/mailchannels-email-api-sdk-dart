//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/metrics_performance_buckets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_performance.g.dart';

/// MetricsPerformance
///
/// Properties:
/// * [bounced] - Count of messages hard-bounced during the specified time range. 
/// * [buckets] 
/// * [complained] - Count of messages complained during the specified time range. 
/// * [delivered] - Count of messages delivered during the specified time range. 
/// * [endTime] - The end of the time range for retrieving message performance metrics (exclusive).
/// * [processed] - Count of messages processed during the specified time range. 
/// * [startTime] - The beginning of the time range for retrieving message performance metrics (inclusive). 
@BuiltValue()
abstract class MetricsPerformance implements Built<MetricsPerformance, MetricsPerformanceBuilder> {
  /// Count of messages hard-bounced during the specified time range. 
  @BuiltValueField(wireName: r'bounced')
  int get bounced;

  @BuiltValueField(wireName: r'buckets')
  MetricsPerformanceBuckets get buckets;

  /// Count of messages complained during the specified time range. 
  @BuiltValueField(wireName: r'complained')
  int get complained;

  /// Count of messages delivered during the specified time range. 
  @BuiltValueField(wireName: r'delivered')
  int get delivered;

  /// The end of the time range for retrieving message performance metrics (exclusive).
  @BuiltValueField(wireName: r'end_time')
  DateTime? get endTime;

  /// Count of messages processed during the specified time range. 
  @BuiltValueField(wireName: r'processed')
  int get processed;

  /// The beginning of the time range for retrieving message performance metrics (inclusive). 
  @BuiltValueField(wireName: r'start_time')
  DateTime? get startTime;

  @override
  String toString() => 'MetricsPerformance { [REDACTED] }';

  MetricsPerformance._();

  factory MetricsPerformance([void updates(MetricsPerformanceBuilder b)]) = _$MetricsPerformance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsPerformanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsPerformance> get serializer => _$MetricsPerformanceSerializer();
}

class _$MetricsPerformanceSerializer implements PrimitiveSerializer<MetricsPerformance> {
  @override
  final Iterable<Type> types = const [MetricsPerformance, _$MetricsPerformance];

  @override
  final String wireName = r'MetricsPerformance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsPerformance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bounced';
    yield serializers.serialize(
      object.bounced,
      specifiedType: const FullType(int),
    );
    yield r'buckets';
    yield serializers.serialize(
      object.buckets,
      specifiedType: const FullType(MetricsPerformanceBuckets),
    );
    yield r'complained';
    yield serializers.serialize(
      object.complained,
      specifiedType: const FullType(int),
    );
    yield r'delivered';
    yield serializers.serialize(
      object.delivered,
      specifiedType: const FullType(int),
    );
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'processed';
    yield serializers.serialize(
      object.processed,
      specifiedType: const FullType(int),
    );
    if (object.startTime != null) {
      yield r'start_time';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricsPerformance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsPerformanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bounced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bounced = valueDes;
          break;
        case r'buckets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MetricsPerformanceBuckets),
          ) as MetricsPerformanceBuckets;
          result.buckets.replace(valueDes);
          break;
        case r'complained':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.complained = valueDes;
          break;
        case r'delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.delivered = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'processed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.processed = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricsPerformance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsPerformanceBuilder();
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



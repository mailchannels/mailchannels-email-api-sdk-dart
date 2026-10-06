//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/metrics_volume_buckets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_volume.g.dart';

/// MetricsVolume
///
/// Properties:
/// * [buckets] 
/// * [delivered] - Count of messages delivered during the specified time range. 
/// * [dropped] - Count of messages dropped during the specified time range. 
/// * [endTime] - The end of the time range for retrieving message volume metrics (exclusive). 
/// * [processed] - Count of messages processed during the specified time range. 
/// * [startTime] - The beginning of the time range for retrieving message volume metrics (inclusive). 
@BuiltValue()
abstract class MetricsVolume implements Built<MetricsVolume, MetricsVolumeBuilder> {
  @BuiltValueField(wireName: r'buckets')
  MetricsVolumeBuckets get buckets;

  /// Count of messages delivered during the specified time range. 
  @BuiltValueField(wireName: r'delivered')
  int get delivered;

  /// Count of messages dropped during the specified time range. 
  @BuiltValueField(wireName: r'dropped')
  int get dropped;

  /// The end of the time range for retrieving message volume metrics (exclusive). 
  @BuiltValueField(wireName: r'end_time')
  DateTime? get endTime;

  /// Count of messages processed during the specified time range. 
  @BuiltValueField(wireName: r'processed')
  int get processed;

  /// The beginning of the time range for retrieving message volume metrics (inclusive). 
  @BuiltValueField(wireName: r'start_time')
  DateTime? get startTime;

  @override
  String toString() => 'MetricsVolume { [REDACTED] }';

  MetricsVolume._();

  factory MetricsVolume([void updates(MetricsVolumeBuilder b)]) = _$MetricsVolume;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsVolumeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsVolume> get serializer => _$MetricsVolumeSerializer();
}

class _$MetricsVolumeSerializer implements PrimitiveSerializer<MetricsVolume> {
  @override
  final Iterable<Type> types = const [MetricsVolume, _$MetricsVolume];

  @override
  final String wireName = r'MetricsVolume';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsVolume object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'buckets';
    yield serializers.serialize(
      object.buckets,
      specifiedType: const FullType(MetricsVolumeBuckets),
    );
    yield r'delivered';
    yield serializers.serialize(
      object.delivered,
      specifiedType: const FullType(int),
    );
    yield r'dropped';
    yield serializers.serialize(
      object.dropped,
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
    MetricsVolume object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsVolumeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'buckets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MetricsVolumeBuckets),
          ) as MetricsVolumeBuckets;
          result.buckets.replace(valueDes);
          break;
        case r'delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.delivered = valueDes;
          break;
        case r'dropped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dropped = valueDes;
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
  MetricsVolume deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsVolumeBuilder();
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



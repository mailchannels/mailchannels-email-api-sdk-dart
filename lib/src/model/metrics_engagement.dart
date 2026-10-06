//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/metrics_engagement_buckets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_engagement.g.dart';

/// MetricsEngagement
///
/// Properties:
/// * [buckets] 
/// * [click] - Count of click events by recipients. 
/// * [clickTrackingDelivered] - Count of recipients of delivered messages with HTML content that contains tracked click URLs, where click tracking is enabled in the send request. 
/// * [endTime] - The end of the time range for retrieving message engagement metrics (exclusive). 
/// * [open] - Count of open events by recipients. 
/// * [openTrackingDelivered] - Count of recipients of delivered messages with HTML content where open tracking was enabled in the send request. 
/// * [startTime] - The beginning of the time range for retrieving message engagement metrics (inclusive). 
/// * [uniqueClick] - Count of distinct messages that had at least one click event. Unlike `click`, each message is counted at most once regardless of how many links were clicked or how many times. Use this to compute click rates without exceeding 100%. 
/// * [uniqueClickTrackingDelivered] - Count of distinct messages delivered with click tracking enabled (message-level, not recipient-level). Use as the denominator when computing unique click rates. 
/// * [uniqueOpen] - Count of distinct messages that had at least one open event. Unlike `open`, each message is counted at most once regardless of how many times its tracking pixel was fired. Use this to compute open rates without exceeding 100%. 
/// * [uniqueOpenTrackingDelivered] - Count of distinct messages delivered with open tracking enabled (message-level, not recipient-level). Use as the denominator when computing unique open rates. 
@BuiltValue()
abstract class MetricsEngagement implements Built<MetricsEngagement, MetricsEngagementBuilder> {
  @BuiltValueField(wireName: r'buckets')
  MetricsEngagementBuckets get buckets;

  /// Count of click events by recipients. 
  @BuiltValueField(wireName: r'click')
  int get click;

  /// Count of recipients of delivered messages with HTML content that contains tracked click URLs, where click tracking is enabled in the send request. 
  @BuiltValueField(wireName: r'click_tracking_delivered')
  int get clickTrackingDelivered;

  /// The end of the time range for retrieving message engagement metrics (exclusive). 
  @BuiltValueField(wireName: r'end_time')
  DateTime? get endTime;

  /// Count of open events by recipients. 
  @BuiltValueField(wireName: r'open')
  int get open;

  /// Count of recipients of delivered messages with HTML content where open tracking was enabled in the send request. 
  @BuiltValueField(wireName: r'open_tracking_delivered')
  int get openTrackingDelivered;

  /// The beginning of the time range for retrieving message engagement metrics (inclusive). 
  @BuiltValueField(wireName: r'start_time')
  DateTime? get startTime;

  /// Count of distinct messages that had at least one click event. Unlike `click`, each message is counted at most once regardless of how many links were clicked or how many times. Use this to compute click rates without exceeding 100%. 
  @BuiltValueField(wireName: r'unique_click')
  int? get uniqueClick;

  /// Count of distinct messages delivered with click tracking enabled (message-level, not recipient-level). Use as the denominator when computing unique click rates. 
  @BuiltValueField(wireName: r'unique_click_tracking_delivered')
  int? get uniqueClickTrackingDelivered;

  /// Count of distinct messages that had at least one open event. Unlike `open`, each message is counted at most once regardless of how many times its tracking pixel was fired. Use this to compute open rates without exceeding 100%. 
  @BuiltValueField(wireName: r'unique_open')
  int? get uniqueOpen;

  /// Count of distinct messages delivered with open tracking enabled (message-level, not recipient-level). Use as the denominator when computing unique open rates. 
  @BuiltValueField(wireName: r'unique_open_tracking_delivered')
  int? get uniqueOpenTrackingDelivered;

  @override
  String toString() => 'MetricsEngagement { [REDACTED] }';

  MetricsEngagement._();

  factory MetricsEngagement([void updates(MetricsEngagementBuilder b)]) = _$MetricsEngagement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsEngagementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsEngagement> get serializer => _$MetricsEngagementSerializer();
}

class _$MetricsEngagementSerializer implements PrimitiveSerializer<MetricsEngagement> {
  @override
  final Iterable<Type> types = const [MetricsEngagement, _$MetricsEngagement];

  @override
  final String wireName = r'MetricsEngagement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsEngagement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'buckets';
    yield serializers.serialize(
      object.buckets,
      specifiedType: const FullType(MetricsEngagementBuckets),
    );
    yield r'click';
    yield serializers.serialize(
      object.click,
      specifiedType: const FullType(int),
    );
    yield r'click_tracking_delivered';
    yield serializers.serialize(
      object.clickTrackingDelivered,
      specifiedType: const FullType(int),
    );
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'open';
    yield serializers.serialize(
      object.open,
      specifiedType: const FullType(int),
    );
    yield r'open_tracking_delivered';
    yield serializers.serialize(
      object.openTrackingDelivered,
      specifiedType: const FullType(int),
    );
    if (object.startTime != null) {
      yield r'start_time';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.uniqueClick != null) {
      yield r'unique_click';
      yield serializers.serialize(
        object.uniqueClick,
        specifiedType: const FullType(int),
      );
    }
    if (object.uniqueClickTrackingDelivered != null) {
      yield r'unique_click_tracking_delivered';
      yield serializers.serialize(
        object.uniqueClickTrackingDelivered,
        specifiedType: const FullType(int),
      );
    }
    if (object.uniqueOpen != null) {
      yield r'unique_open';
      yield serializers.serialize(
        object.uniqueOpen,
        specifiedType: const FullType(int),
      );
    }
    if (object.uniqueOpenTrackingDelivered != null) {
      yield r'unique_open_tracking_delivered';
      yield serializers.serialize(
        object.uniqueOpenTrackingDelivered,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricsEngagement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsEngagementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'buckets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MetricsEngagementBuckets),
          ) as MetricsEngagementBuckets;
          result.buckets.replace(valueDes);
          break;
        case r'click':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.click = valueDes;
          break;
        case r'click_tracking_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.clickTrackingDelivered = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.open = valueDes;
          break;
        case r'open_tracking_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.openTrackingDelivered = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        case r'unique_click':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.uniqueClick = valueDes;
          break;
        case r'unique_click_tracking_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.uniqueClickTrackingDelivered = valueDes;
          break;
        case r'unique_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.uniqueOpen = valueDes;
          break;
        case r'unique_open_tracking_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.uniqueOpenTrackingDelivered = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricsEngagement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsEngagementBuilder();
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



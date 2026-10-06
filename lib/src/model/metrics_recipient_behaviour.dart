//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/metrics_recipient_behaviour_buckets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_recipient_behaviour.g.dart';

/// MetricsRecipientBehaviour
///
/// Properties:
/// * [buckets] 
/// * [endTime] - The end of the time range for retrieving recipient behaviour metrics (exclusive). 
/// * [startTime] - The beginning of the time range for retrieving recipient behaviour metrics (inclusive). 
/// * [unsubscribeDelivered] - Count of recipients of delivered messages that include at least one of the unsubscribe link or unsubscribe headers. Since the unsubscribe feature requires exactly one recipient per message, this count also represents the total number of delivered messages. 
/// * [unsubscribed] - Count of unsubscribed events by recipients. 
@BuiltValue()
abstract class MetricsRecipientBehaviour implements Built<MetricsRecipientBehaviour, MetricsRecipientBehaviourBuilder> {
  @BuiltValueField(wireName: r'buckets')
  MetricsRecipientBehaviourBuckets get buckets;

  /// The end of the time range for retrieving recipient behaviour metrics (exclusive). 
  @BuiltValueField(wireName: r'end_time')
  DateTime? get endTime;

  /// The beginning of the time range for retrieving recipient behaviour metrics (inclusive). 
  @BuiltValueField(wireName: r'start_time')
  DateTime? get startTime;

  /// Count of recipients of delivered messages that include at least one of the unsubscribe link or unsubscribe headers. Since the unsubscribe feature requires exactly one recipient per message, this count also represents the total number of delivered messages. 
  @BuiltValueField(wireName: r'unsubscribe_delivered')
  int get unsubscribeDelivered;

  /// Count of unsubscribed events by recipients. 
  @BuiltValueField(wireName: r'unsubscribed')
  int get unsubscribed;

  @override
  String toString() => 'MetricsRecipientBehaviour { [REDACTED] }';

  MetricsRecipientBehaviour._();

  factory MetricsRecipientBehaviour([void updates(MetricsRecipientBehaviourBuilder b)]) = _$MetricsRecipientBehaviour;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsRecipientBehaviourBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsRecipientBehaviour> get serializer => _$MetricsRecipientBehaviourSerializer();
}

class _$MetricsRecipientBehaviourSerializer implements PrimitiveSerializer<MetricsRecipientBehaviour> {
  @override
  final Iterable<Type> types = const [MetricsRecipientBehaviour, _$MetricsRecipientBehaviour];

  @override
  final String wireName = r'MetricsRecipientBehaviour';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsRecipientBehaviour object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'buckets';
    yield serializers.serialize(
      object.buckets,
      specifiedType: const FullType(MetricsRecipientBehaviourBuckets),
    );
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.startTime != null) {
      yield r'start_time';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'unsubscribe_delivered';
    yield serializers.serialize(
      object.unsubscribeDelivered,
      specifiedType: const FullType(int),
    );
    yield r'unsubscribed';
    yield serializers.serialize(
      object.unsubscribed,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricsRecipientBehaviour object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsRecipientBehaviourBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'buckets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MetricsRecipientBehaviourBuckets),
          ) as MetricsRecipientBehaviourBuckets;
          result.buckets.replace(valueDes);
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        case r'unsubscribe_delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unsubscribeDelivered = valueDes;
          break;
        case r'unsubscribed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unsubscribed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricsRecipientBehaviour deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsRecipientBehaviourBuilder();
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



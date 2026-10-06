//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/metrics_sender.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_sender_response.g.dart';

/// MetricsSenderResponse
///
/// Properties:
/// * [endTime] 
/// * [limit] 
/// * [offset] 
/// * [senders] 
/// * [startTime] 
/// * [total] - The total number of senders in this category that sent messages in the given time range. 
@BuiltValue()
abstract class MetricsSenderResponse implements Built<MetricsSenderResponse, MetricsSenderResponseBuilder> {
  @BuiltValueField(wireName: r'end_time')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'limit')
  int get limit;

  @BuiltValueField(wireName: r'offset')
  int get offset;

  @BuiltValueField(wireName: r'senders')
  BuiltList<MetricsSender> get senders;

  @BuiltValueField(wireName: r'start_time')
  DateTime? get startTime;

  /// The total number of senders in this category that sent messages in the given time range. 
  @BuiltValueField(wireName: r'total')
  int get total;

  @override
  String toString() => 'MetricsSenderResponse { [REDACTED] }';

  MetricsSenderResponse._();

  factory MetricsSenderResponse([void updates(MetricsSenderResponseBuilder b)]) = _$MetricsSenderResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsSenderResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsSenderResponse> get serializer => _$MetricsSenderResponseSerializer();
}

class _$MetricsSenderResponseSerializer implements PrimitiveSerializer<MetricsSenderResponse> {
  @override
  final Iterable<Type> types = const [MetricsSenderResponse, _$MetricsSenderResponse];

  @override
  final String wireName = r'MetricsSenderResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsSenderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'limit';
    yield serializers.serialize(
      object.limit,
      specifiedType: const FullType(int),
    );
    yield r'offset';
    yield serializers.serialize(
      object.offset,
      specifiedType: const FullType(int),
    );
    yield r'senders';
    yield serializers.serialize(
      object.senders,
      specifiedType: const FullType(BuiltList, [FullType(MetricsSender)]),
    );
    if (object.startTime != null) {
      yield r'start_time';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricsSenderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsSenderResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.offset = valueDes;
          break;
        case r'senders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MetricsSender)]),
          ) as BuiltList<MetricsSender>;
          result.senders.replace(valueDes);
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricsSenderResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsSenderResponseBuilder();
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



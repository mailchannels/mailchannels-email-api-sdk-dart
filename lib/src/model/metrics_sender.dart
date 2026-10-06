//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metrics_sender.g.dart';

/// MetricsSender
///
/// Properties:
/// * [bounced] 
/// * [delivered] 
/// * [dropped] 
/// * [name] 
/// * [processed] 
@BuiltValue()
abstract class MetricsSender implements Built<MetricsSender, MetricsSenderBuilder> {
  @BuiltValueField(wireName: r'bounced')
  int get bounced;

  @BuiltValueField(wireName: r'delivered')
  int get delivered;

  @BuiltValueField(wireName: r'dropped')
  int get dropped;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'processed')
  int get processed;

  @override
  String toString() => 'MetricsSender { [REDACTED] }';

  MetricsSender._();

  factory MetricsSender([void updates(MetricsSenderBuilder b)]) = _$MetricsSender;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricsSenderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricsSender> get serializer => _$MetricsSenderSerializer();
}

class _$MetricsSenderSerializer implements PrimitiveSerializer<MetricsSender> {
  @override
  final Iterable<Type> types = const [MetricsSender, _$MetricsSender];

  @override
  final String wireName = r'MetricsSender';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricsSender object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bounced';
    yield serializers.serialize(
      object.bounced,
      specifiedType: const FullType(int),
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
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'processed';
    yield serializers.serialize(
      object.processed,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricsSender object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetricsSenderBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'processed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.processed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricsSender deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsSenderBuilder();
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



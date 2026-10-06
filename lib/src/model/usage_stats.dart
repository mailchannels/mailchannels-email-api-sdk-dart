//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailchannels_email_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'usage_stats.g.dart';

/// UsageStats
///
/// Properties:
/// * [monthlyLimit] - The effective monthly limit for the current billing period. A limit of zero means the account cannot send any messages. For sub-accounts with no explicit limit set (i.e., -1), the monthly limit for the parent account is returned. 
/// * [periodEndDate] - The end date of the current billing period (ISO 8601 format).
/// * [periodStartDate] - The start date of the current billing period (ISO 8601 format).
/// * [totalUsage] - The total usage for the current billing period.
@BuiltValue()
abstract class UsageStats implements Built<UsageStats, UsageStatsBuilder> {
  /// The effective monthly limit for the current billing period. A limit of zero means the account cannot send any messages. For sub-accounts with no explicit limit set (i.e., -1), the monthly limit for the parent account is returned. 
  @BuiltValueField(wireName: r'monthly_limit')
  int get monthlyLimit;

  /// The end date of the current billing period (ISO 8601 format).
  @BuiltValueField(wireName: r'period_end_date')
  Date? get periodEndDate;

  /// The start date of the current billing period (ISO 8601 format).
  @BuiltValueField(wireName: r'period_start_date')
  Date? get periodStartDate;

  /// The total usage for the current billing period.
  @BuiltValueField(wireName: r'total_usage')
  int get totalUsage;

  @override
  String toString() => 'UsageStats { [REDACTED] }';

  UsageStats._();

  factory UsageStats([void updates(UsageStatsBuilder b)]) = _$UsageStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsageStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsageStats> get serializer => _$UsageStatsSerializer();
}

class _$UsageStatsSerializer implements PrimitiveSerializer<UsageStats> {
  @override
  final Iterable<Type> types = const [UsageStats, _$UsageStats];

  @override
  final String wireName = r'UsageStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsageStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'monthly_limit';
    yield serializers.serialize(
      object.monthlyLimit,
      specifiedType: const FullType(int),
    );
    if (object.periodEndDate != null) {
      yield r'period_end_date';
      yield serializers.serialize(
        object.periodEndDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.periodStartDate != null) {
      yield r'period_start_date';
      yield serializers.serialize(
        object.periodStartDate,
        specifiedType: const FullType(Date),
      );
    }
    yield r'total_usage';
    yield serializers.serialize(
      object.totalUsage,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UsageStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsageStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'monthly_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.monthlyLimit = valueDes;
          break;
        case r'period_end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.periodEndDate = valueDes;
          break;
        case r'period_start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.periodStartDate = valueDes;
          break;
        case r'total_usage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalUsage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsageStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsageStatsBuilder();
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



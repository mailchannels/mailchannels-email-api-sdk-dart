//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/custom_tracking_domain.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_tracking_domain_list_response.g.dart';

/// CustomTrackingDomainListResponse
///
/// Properties:
/// * [customTrackingDomains] - List of custom tracking domains matching the filter criteria
/// * [total] - Total number of custom tracking domains
@BuiltValue()
abstract class CustomTrackingDomainListResponse implements Built<CustomTrackingDomainListResponse, CustomTrackingDomainListResponseBuilder> {
  /// List of custom tracking domains matching the filter criteria
  @BuiltValueField(wireName: r'custom_tracking_domains')
  BuiltList<CustomTrackingDomain> get customTrackingDomains;

  /// Total number of custom tracking domains
  @BuiltValueField(wireName: r'total')
  int get total;

  @override
  String toString() => 'CustomTrackingDomainListResponse { [REDACTED] }';

  CustomTrackingDomainListResponse._();

  factory CustomTrackingDomainListResponse([void updates(CustomTrackingDomainListResponseBuilder b)]) = _$CustomTrackingDomainListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomTrackingDomainListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomTrackingDomainListResponse> get serializer => _$CustomTrackingDomainListResponseSerializer();
}

class _$CustomTrackingDomainListResponseSerializer implements PrimitiveSerializer<CustomTrackingDomainListResponse> {
  @override
  final Iterable<Type> types = const [CustomTrackingDomainListResponse, _$CustomTrackingDomainListResponse];

  @override
  final String wireName = r'CustomTrackingDomainListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomTrackingDomainListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'custom_tracking_domains';
    yield serializers.serialize(
      object.customTrackingDomains,
      specifiedType: const FullType(BuiltList, [FullType(CustomTrackingDomain)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomTrackingDomainListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomTrackingDomainListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'custom_tracking_domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomTrackingDomain)]),
          ) as BuiltList<CustomTrackingDomain>;
          result.customTrackingDomains.replace(valueDes);
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
  CustomTrackingDomainListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomTrackingDomainListResponseBuilder();
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



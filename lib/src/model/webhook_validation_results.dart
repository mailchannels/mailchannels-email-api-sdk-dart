//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailchannels_email_api/src/model/webhook_validation_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_validation_results.g.dart';

/// WebhookValidationResults
///
/// Properties:
/// * [allPassed] - Indicates whether all webhook validations passed 
/// * [results] - Detailed results for each tested webhook, including whether it returned a 2xx status code, along with its response status code and body. 
@BuiltValue()
abstract class WebhookValidationResults implements Built<WebhookValidationResults, WebhookValidationResultsBuilder> {
  /// Indicates whether all webhook validations passed 
  @BuiltValueField(wireName: r'all_passed')
  bool get allPassed;

  /// Detailed results for each tested webhook, including whether it returned a 2xx status code, along with its response status code and body. 
  @BuiltValueField(wireName: r'results')
  BuiltList<WebhookValidationResult> get results;

  @override
  String toString() => 'WebhookValidationResults { [REDACTED] }';

  WebhookValidationResults._();

  factory WebhookValidationResults([void updates(WebhookValidationResultsBuilder b)]) = _$WebhookValidationResults;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookValidationResultsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookValidationResults> get serializer => _$WebhookValidationResultsSerializer();
}

class _$WebhookValidationResultsSerializer implements PrimitiveSerializer<WebhookValidationResults> {
  @override
  final Iterable<Type> types = const [WebhookValidationResults, _$WebhookValidationResults];

  @override
  final String wireName = r'WebhookValidationResults';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookValidationResults object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'all_passed';
    yield serializers.serialize(
      object.allPassed,
      specifiedType: const FullType(bool),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(WebhookValidationResult)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookValidationResults object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookValidationResultsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'all_passed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allPassed = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WebhookValidationResult)]),
          ) as BuiltList<WebhookValidationResult>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookValidationResults deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookValidationResultsBuilder();
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



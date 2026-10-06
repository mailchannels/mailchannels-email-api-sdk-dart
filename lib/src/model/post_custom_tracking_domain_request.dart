//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_custom_tracking_domain_request.g.dart';

/// PostCustomTrackingDomainRequest
///
/// Properties:
/// * [hostname] - The hostname to register as a custom tracking domain (e.g., click.example.com). The hostname must have a CNAME record pointing to `links.mailchannels.net`. 
/// * [name] - A unique label used to select this domain at message send time
/// * [scope] - The event type this domain handles
@BuiltValue()
abstract class PostCustomTrackingDomainRequest implements Built<PostCustomTrackingDomainRequest, PostCustomTrackingDomainRequestBuilder> {
  /// The hostname to register as a custom tracking domain (e.g., click.example.com). The hostname must have a CNAME record pointing to `links.mailchannels.net`. 
  @BuiltValueField(wireName: r'hostname')
  String get hostname;

  /// A unique label used to select this domain at message send time
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The event type this domain handles
  @BuiltValueField(wireName: r'scope')
  PostCustomTrackingDomainRequestScopeEnum get scope;
  // enum scopeEnum {  click,  open,  unsubscribe,  };

  @override
  String toString() => 'PostCustomTrackingDomainRequest { [REDACTED] }';

  PostCustomTrackingDomainRequest._();

  factory PostCustomTrackingDomainRequest([void updates(PostCustomTrackingDomainRequestBuilder b)]) = _$PostCustomTrackingDomainRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostCustomTrackingDomainRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostCustomTrackingDomainRequest> get serializer => _$PostCustomTrackingDomainRequestSerializer();
}

class _$PostCustomTrackingDomainRequestSerializer implements PrimitiveSerializer<PostCustomTrackingDomainRequest> {
  @override
  final Iterable<Type> types = const [PostCustomTrackingDomainRequest, _$PostCustomTrackingDomainRequest];

  @override
  final String wireName = r'PostCustomTrackingDomainRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostCustomTrackingDomainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hostname';
    yield serializers.serialize(
      object.hostname,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(PostCustomTrackingDomainRequestScopeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostCustomTrackingDomainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostCustomTrackingDomainRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hostname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hostname = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostCustomTrackingDomainRequestScopeEnum),
          ) as PostCustomTrackingDomainRequestScopeEnum;
          result.scope = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostCustomTrackingDomainRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostCustomTrackingDomainRequestBuilder();
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


/// The event type this domain handles
class PostCustomTrackingDomainRequestScopeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'click')
  static const PostCustomTrackingDomainRequestScopeEnum click = _$postCustomTrackingDomainRequestScopeEnum_click;
  @BuiltValueEnumConst(wireName: r'open')
  static const PostCustomTrackingDomainRequestScopeEnum open = _$postCustomTrackingDomainRequestScopeEnum_open;
  @BuiltValueEnumConst(wireName: r'unsubscribe')
  static const PostCustomTrackingDomainRequestScopeEnum unsubscribe = _$postCustomTrackingDomainRequestScopeEnum_unsubscribe;

  static Serializer<PostCustomTrackingDomainRequestScopeEnum> get serializer => _$postCustomTrackingDomainRequestScopeEnumSerializer;

  const PostCustomTrackingDomainRequestScopeEnum._(String name): super(name);

  static BuiltSet<PostCustomTrackingDomainRequestScopeEnum> get values => _$postCustomTrackingDomainRequestScopeEnumValues;
  static PostCustomTrackingDomainRequestScopeEnum valueOf(String name) => _$postCustomTrackingDomainRequestScopeEnumValueOf(name);
}


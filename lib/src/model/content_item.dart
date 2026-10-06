//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content_item.g.dart';

/// ContentItem
///
/// Properties:
/// * [templateType] - The template type of the content
/// * [type] - The mime type of the content you are including in your email
/// * [value] - The actual content of the specified mime type that you are including in the message
@BuiltValue()
abstract class ContentItem implements Built<ContentItem, ContentItemBuilder> {
  /// The template type of the content
  @BuiltValueField(wireName: r'template_type')
  ContentItemTemplateTypeEnum? get templateType;
  // enum templateTypeEnum {  mustache,  };

  /// The mime type of the content you are including in your email
  @BuiltValueField(wireName: r'type')
  String get type;

  /// The actual content of the specified mime type that you are including in the message
  @BuiltValueField(wireName: r'value')
  String get value;

  @override
  String toString() => 'ContentItem { [REDACTED] }';

  ContentItem._();

  factory ContentItem([void updates(ContentItemBuilder b)]) = _$ContentItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContentItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContentItem> get serializer => _$ContentItemSerializer();
}

class _$ContentItemSerializer implements PrimitiveSerializer<ContentItem> {
  @override
  final Iterable<Type> types = const [ContentItem, _$ContentItem];

  @override
  final String wireName = r'ContentItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContentItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.templateType != null) {
      yield r'template_type';
      yield serializers.serialize(
        object.templateType,
        specifiedType: const FullType(ContentItemTemplateTypeEnum),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ContentItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContentItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'template_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ContentItemTemplateTypeEnum),
          ) as ContentItemTemplateTypeEnum?;
          if (valueDes == null) continue;
          result.templateType = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContentItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContentItemBuilder();
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


/// The template type of the content
class ContentItemTemplateTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'mustache')
  static const ContentItemTemplateTypeEnum mustache = _$contentItemTemplateTypeEnum_mustache;

  static Serializer<ContentItemTemplateTypeEnum> get serializer => _$contentItemTemplateTypeEnumSerializer;

  const ContentItemTemplateTypeEnum._(String name): super(name);

  static BuiltSet<ContentItemTemplateTypeEnum> get values => _$contentItemTemplateTypeEnumValues;
  static ContentItemTemplateTypeEnum valueOf(String name) => _$contentItemTemplateTypeEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attachment.g.dart';

/// Attachment
///
/// Properties:
/// * [content] - the attachment data, encoded in base64
/// * [contentId] - A unique identifier for this attachment. When set, the attachment is embedded inline in the message body (Content-Disposition: inline) instead of offered as a downloadable attachment, and can be referenced from HTML content via a `cid:` URI, e.g. `<img src=\"cid:logo123\">` refers to an attachment with `content_id: logo123` (RFC 2392). Must be unique across all attachments in the request. 
/// * [filename] - the name of the attachment file
/// * [type] - the MIME type of the attachment
@BuiltValue()
abstract class Attachment implements Built<Attachment, AttachmentBuilder> {
  /// the attachment data, encoded in base64
  @BuiltValueField(wireName: r'content')
  String get content;

  /// A unique identifier for this attachment. When set, the attachment is embedded inline in the message body (Content-Disposition: inline) instead of offered as a downloadable attachment, and can be referenced from HTML content via a `cid:` URI, e.g. `<img src=\"cid:logo123\">` refers to an attachment with `content_id: logo123` (RFC 2392). Must be unique across all attachments in the request. 
  @BuiltValueField(wireName: r'content_id')
  String? get contentId;

  /// the name of the attachment file
  @BuiltValueField(wireName: r'filename')
  String get filename;

  /// the MIME type of the attachment
  @BuiltValueField(wireName: r'type')
  String? get type;

  @override
  String toString() => 'Attachment { [REDACTED] }';

  Attachment._();

  factory Attachment([void updates(AttachmentBuilder b)]) = _$Attachment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttachmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Attachment> get serializer => _$AttachmentSerializer();
}

class _$AttachmentSerializer implements PrimitiveSerializer<Attachment> {
  @override
  final Iterable<Type> types = const [Attachment, _$Attachment];

  @override
  final String wireName = r'Attachment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Attachment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    if (object.contentId != null) {
      yield r'content_id';
      yield serializers.serialize(
        object.contentId,
        specifiedType: const FullType(String),
      );
    }
    yield r'filename';
    yield serializers.serialize(
      object.filename,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Attachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AttachmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'content_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contentId = valueDes;
          break;
        case r'filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filename = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Attachment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachmentBuilder();
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



// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ContentItemTemplateTypeEnum _$contentItemTemplateTypeEnum_mustache =
    const ContentItemTemplateTypeEnum._('mustache');

ContentItemTemplateTypeEnum _$contentItemTemplateTypeEnumValueOf(String name) {
  switch (name) {
    case 'mustache':
      return _$contentItemTemplateTypeEnum_mustache;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ContentItemTemplateTypeEnum>
_$contentItemTemplateTypeEnumValues = BuiltSet<ContentItemTemplateTypeEnum>(
  const <ContentItemTemplateTypeEnum>[_$contentItemTemplateTypeEnum_mustache],
);

Serializer<ContentItemTemplateTypeEnum>
_$contentItemTemplateTypeEnumSerializer =
    _$ContentItemTemplateTypeEnumSerializer();

class _$ContentItemTemplateTypeEnumSerializer
    implements PrimitiveSerializer<ContentItemTemplateTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mustache': 'mustache',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mustache': 'mustache',
  };

  @override
  final Iterable<Type> types = const <Type>[ContentItemTemplateTypeEnum];
  @override
  final String wireName = 'ContentItemTemplateTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ContentItemTemplateTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ContentItemTemplateTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ContentItemTemplateTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ContentItem extends ContentItem {
  @override
  final ContentItemTemplateTypeEnum? templateType;
  @override
  final String type;
  @override
  final String value;

  factory _$ContentItem([void Function(ContentItemBuilder)? updates]) =>
      (ContentItemBuilder()..update(updates))._build();

  _$ContentItem._({this.templateType, required this.type, required this.value})
    : super._();
  @override
  ContentItem rebuild(void Function(ContentItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentItemBuilder toBuilder() => ContentItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentItem &&
        templateType == other.templateType &&
        type == other.type &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, templateType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ContentItemBuilder implements Builder<ContentItem, ContentItemBuilder> {
  _$ContentItem? _$v;

  ContentItemTemplateTypeEnum? _templateType;
  ContentItemTemplateTypeEnum? get templateType => _$this._templateType;
  set templateType(ContentItemTemplateTypeEnum? templateType) =>
      _$this._templateType = templateType;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ContentItemBuilder() {
    ContentItem._defaults(this);
  }

  ContentItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateType = $v.templateType;
      _type = $v.type;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentItem other) {
    _$v = other as _$ContentItem;
  }

  @override
  void update(void Function(ContentItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContentItem build() => _build();

  _$ContentItem _build() {
    final _$result =
        _$v ??
        _$ContentItem._(
          templateType: templateType,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'ContentItem',
            'type',
          ),
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'ContentItem',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

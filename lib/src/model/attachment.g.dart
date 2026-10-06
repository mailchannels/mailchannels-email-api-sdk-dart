// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Attachment extends Attachment {
  @override
  final String content;
  @override
  final String? contentId;
  @override
  final String filename;
  @override
  final String? type;

  factory _$Attachment([void Function(AttachmentBuilder)? updates]) =>
      (AttachmentBuilder()..update(updates))._build();

  _$Attachment._({
    required this.content,
    this.contentId,
    required this.filename,
    this.type,
  }) : super._();
  @override
  Attachment rebuild(void Function(AttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachmentBuilder toBuilder() => AttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attachment &&
        content == other.content &&
        contentId == other.contentId &&
        filename == other.filename &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, contentId.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachmentBuilder implements Builder<Attachment, AttachmentBuilder> {
  _$Attachment? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _contentId;
  String? get contentId => _$this._contentId;
  set contentId(String? contentId) => _$this._contentId = contentId;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  AttachmentBuilder() {
    Attachment._defaults(this);
  }

  AttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _contentId = $v.contentId;
      _filename = $v.filename;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attachment other) {
    _$v = other as _$Attachment;
  }

  @override
  void update(void Function(AttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Attachment build() => _build();

  _$Attachment _build() {
    final _$result =
        _$v ??
        _$Attachment._(
          content: BuiltValueNullFieldError.checkNotNull(
            content,
            r'Attachment',
            'content',
          ),
          contentId: contentId,
          filename: BuiltValueNullFieldError.checkNotNull(
            filename,
            r'Attachment',
            'filename',
          ),
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

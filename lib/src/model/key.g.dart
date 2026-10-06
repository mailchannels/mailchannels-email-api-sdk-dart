// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Key extends Key {
  @override
  final String id;
  @override
  final String key;

  factory _$Key([void Function(KeyBuilder)? updates]) =>
      (KeyBuilder()..update(updates))._build();

  _$Key._({required this.id, required this.key}) : super._();
  @override
  Key rebuild(void Function(KeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyBuilder toBuilder() => KeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Key && id == other.id && key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KeyBuilder implements Builder<Key, KeyBuilder> {
  _$Key? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  KeyBuilder() {
    Key._defaults(this);
  }

  KeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Key other) {
    _$v = other as _$Key;
  }

  @override
  void update(void Function(KeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Key build() => _build();

  _$Key _build() {
    final _$result =
        _$v ??
        _$Key._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Key', 'id'),
          key: BuiltValueNullFieldError.checkNotNull(key, r'Key', 'key'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

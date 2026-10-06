// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIKey extends APIKey {
  @override
  final int? id;
  @override
  final String? key;

  factory _$APIKey([void Function(APIKeyBuilder)? updates]) =>
      (APIKeyBuilder()..update(updates))._build();

  _$APIKey._({this.id, this.key}) : super._();
  @override
  APIKey rebuild(void Function(APIKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIKeyBuilder toBuilder() => APIKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIKey && id == other.id && key == other.key;
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

class APIKeyBuilder implements Builder<APIKey, APIKeyBuilder> {
  _$APIKey? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  APIKeyBuilder() {
    APIKey._defaults(this);
  }

  APIKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIKey other) {
    _$v = other as _$APIKey;
  }

  @override
  void update(void Function(APIKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIKey build() => _build();

  _$APIKey _build() {
    final _$result = _$v ?? _$APIKey._(id: id, key: key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

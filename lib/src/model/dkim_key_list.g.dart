// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dkim_key_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DKIMKeyList extends DKIMKeyList {
  @override
  final BuiltList<DKIMKeyInfo> keys;

  factory _$DKIMKeyList([void Function(DKIMKeyListBuilder)? updates]) =>
      (DKIMKeyListBuilder()..update(updates))._build();

  _$DKIMKeyList._({required this.keys}) : super._();
  @override
  DKIMKeyList rebuild(void Function(DKIMKeyListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DKIMKeyListBuilder toBuilder() => DKIMKeyListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DKIMKeyList && keys == other.keys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DKIMKeyListBuilder implements Builder<DKIMKeyList, DKIMKeyListBuilder> {
  _$DKIMKeyList? _$v;

  ListBuilder<DKIMKeyInfo>? _keys;
  ListBuilder<DKIMKeyInfo> get keys =>
      _$this._keys ??= ListBuilder<DKIMKeyInfo>();
  set keys(ListBuilder<DKIMKeyInfo>? keys) => _$this._keys = keys;

  DKIMKeyListBuilder() {
    DKIMKeyList._defaults(this);
  }

  DKIMKeyListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keys = $v.keys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DKIMKeyList other) {
    _$v = other as _$DKIMKeyList;
  }

  @override
  void update(void Function(DKIMKeyListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DKIMKeyList build() => _build();

  _$DKIMKeyList _build() {
    _$DKIMKeyList _$result;
    try {
      _$result = _$v ?? _$DKIMKeyList._(keys: keys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        keys.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DKIMKeyList',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewKey extends NewKey {
  @override
  final String selector;

  factory _$NewKey([void Function(NewKeyBuilder)? updates]) =>
      (NewKeyBuilder()..update(updates))._build();

  _$NewKey._({required this.selector}) : super._();
  @override
  NewKey rebuild(void Function(NewKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewKeyBuilder toBuilder() => NewKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewKey && selector == other.selector;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selector.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NewKeyBuilder implements Builder<NewKey, NewKeyBuilder> {
  _$NewKey? _$v;

  String? _selector;
  String? get selector => _$this._selector;
  set selector(String? selector) => _$this._selector = selector;

  NewKeyBuilder() {
    NewKey._defaults(this);
  }

  NewKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selector = $v.selector;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewKey other) {
    _$v = other as _$NewKey;
  }

  @override
  void update(void Function(NewKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewKey build() => _build();

  _$NewKey _build() {
    final _$result =
        _$v ??
        _$NewKey._(
          selector: BuiltValueNullFieldError.checkNotNull(
            selector,
            r'NewKey',
            'selector',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limit_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LimitInput extends LimitInput {
  @override
  final int sends;

  factory _$LimitInput([void Function(LimitInputBuilder)? updates]) =>
      (LimitInputBuilder()..update(updates))._build();

  _$LimitInput._({required this.sends}) : super._();
  @override
  LimitInput rebuild(void Function(LimitInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LimitInputBuilder toBuilder() => LimitInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LimitInput && sends == other.sends;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sends.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LimitInputBuilder implements Builder<LimitInput, LimitInputBuilder> {
  _$LimitInput? _$v;

  int? _sends;
  int? get sends => _$this._sends;
  set sends(int? sends) => _$this._sends = sends;

  LimitInputBuilder() {
    LimitInput._defaults(this);
  }

  LimitInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sends = $v.sends;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LimitInput other) {
    _$v = other as _$LimitInput;
  }

  @override
  void update(void Function(LimitInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LimitInput build() => _build();

  _$LimitInput _build() {
    final _$result =
        _$v ??
        _$LimitInput._(
          sends: BuiltValueNullFieldError.checkNotNull(
            sends,
            r'LimitInput',
            'sends',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

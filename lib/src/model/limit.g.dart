// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Limit extends Limit {
  @override
  final int sends;

  factory _$Limit([void Function(LimitBuilder)? updates]) =>
      (LimitBuilder()..update(updates))._build();

  _$Limit._({required this.sends}) : super._();
  @override
  Limit rebuild(void Function(LimitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LimitBuilder toBuilder() => LimitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Limit && sends == other.sends;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sends.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LimitBuilder implements Builder<Limit, LimitBuilder> {
  _$Limit? _$v;

  int? _sends;
  int? get sends => _$this._sends;
  set sends(int? sends) => _$this._sends = sends;

  LimitBuilder() {
    Limit._defaults(this);
  }

  LimitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sends = $v.sends;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Limit other) {
    _$v = other as _$Limit;
  }

  @override
  void update(void Function(LimitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Limit build() => _build();

  _$Limit _build() {
    final _$result =
        _$v ??
        _$Limit._(
          sends: BuiltValueNullFieldError.checkNotNull(
            sends,
            r'Limit',
            'sends',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

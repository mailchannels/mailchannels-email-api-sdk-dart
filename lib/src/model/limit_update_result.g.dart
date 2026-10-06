// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limit_update_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LimitUpdateResult extends LimitUpdateResult {
  @override
  final Limit? limit;

  factory _$LimitUpdateResult([
    void Function(LimitUpdateResultBuilder)? updates,
  ]) => (LimitUpdateResultBuilder()..update(updates))._build();

  _$LimitUpdateResult._({this.limit}) : super._();
  @override
  LimitUpdateResult rebuild(void Function(LimitUpdateResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LimitUpdateResultBuilder toBuilder() =>
      LimitUpdateResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LimitUpdateResult && limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LimitUpdateResultBuilder
    implements Builder<LimitUpdateResult, LimitUpdateResultBuilder> {
  _$LimitUpdateResult? _$v;

  LimitBuilder? _limit;
  LimitBuilder get limit => _$this._limit ??= LimitBuilder();
  set limit(LimitBuilder? limit) => _$this._limit = limit;

  LimitUpdateResultBuilder() {
    LimitUpdateResult._defaults(this);
  }

  LimitUpdateResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LimitUpdateResult other) {
    _$v = other as _$LimitUpdateResult;
  }

  @override
  void update(void Function(LimitUpdateResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LimitUpdateResult build() => _build();

  _$LimitUpdateResult _build() {
    _$LimitUpdateResult _$result;
    try {
      _$result = _$v ?? _$LimitUpdateResult._(limit: _limit?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'limit';
        _limit?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LimitUpdateResult',
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

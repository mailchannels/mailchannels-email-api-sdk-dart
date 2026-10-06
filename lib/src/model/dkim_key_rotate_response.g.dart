// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dkim_key_rotate_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DKIMKeyRotateResponse extends DKIMKeyRotateResponse {
  @override
  final DKIMKeyInfo newKey;
  @override
  final DKIMKeyInfo rotatedKey;

  factory _$DKIMKeyRotateResponse([
    void Function(DKIMKeyRotateResponseBuilder)? updates,
  ]) => (DKIMKeyRotateResponseBuilder()..update(updates))._build();

  _$DKIMKeyRotateResponse._({required this.newKey, required this.rotatedKey})
    : super._();
  @override
  DKIMKeyRotateResponse rebuild(
    void Function(DKIMKeyRotateResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DKIMKeyRotateResponseBuilder toBuilder() =>
      DKIMKeyRotateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DKIMKeyRotateResponse &&
        newKey == other.newKey &&
        rotatedKey == other.rotatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newKey.hashCode);
    _$hash = $jc(_$hash, rotatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DKIMKeyRotateResponseBuilder
    implements Builder<DKIMKeyRotateResponse, DKIMKeyRotateResponseBuilder> {
  _$DKIMKeyRotateResponse? _$v;

  DKIMKeyInfoBuilder? _newKey;
  DKIMKeyInfoBuilder get newKey => _$this._newKey ??= DKIMKeyInfoBuilder();
  set newKey(DKIMKeyInfoBuilder? newKey) => _$this._newKey = newKey;

  DKIMKeyInfoBuilder? _rotatedKey;
  DKIMKeyInfoBuilder get rotatedKey =>
      _$this._rotatedKey ??= DKIMKeyInfoBuilder();
  set rotatedKey(DKIMKeyInfoBuilder? rotatedKey) =>
      _$this._rotatedKey = rotatedKey;

  DKIMKeyRotateResponseBuilder() {
    DKIMKeyRotateResponse._defaults(this);
  }

  DKIMKeyRotateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newKey = $v.newKey.toBuilder();
      _rotatedKey = $v.rotatedKey.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DKIMKeyRotateResponse other) {
    _$v = other as _$DKIMKeyRotateResponse;
  }

  @override
  void update(void Function(DKIMKeyRotateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DKIMKeyRotateResponse build() => _build();

  _$DKIMKeyRotateResponse _build() {
    _$DKIMKeyRotateResponse _$result;
    try {
      _$result =
          _$v ??
          _$DKIMKeyRotateResponse._(
            newKey: newKey.build(),
            rotatedKey: rotatedKey.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'newKey';
        newKey.build();
        _$failedField = 'rotatedKey';
        rotatedKey.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DKIMKeyRotateResponse',
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

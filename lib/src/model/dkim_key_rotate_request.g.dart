// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dkim_key_rotate_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DKIMKeyRotateRequest extends DKIMKeyRotateRequest {
  @override
  final NewKey newKey;

  factory _$DKIMKeyRotateRequest([
    void Function(DKIMKeyRotateRequestBuilder)? updates,
  ]) => (DKIMKeyRotateRequestBuilder()..update(updates))._build();

  _$DKIMKeyRotateRequest._({required this.newKey}) : super._();
  @override
  DKIMKeyRotateRequest rebuild(
    void Function(DKIMKeyRotateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DKIMKeyRotateRequestBuilder toBuilder() =>
      DKIMKeyRotateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DKIMKeyRotateRequest && newKey == other.newKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DKIMKeyRotateRequestBuilder
    implements Builder<DKIMKeyRotateRequest, DKIMKeyRotateRequestBuilder> {
  _$DKIMKeyRotateRequest? _$v;

  NewKeyBuilder? _newKey;
  NewKeyBuilder get newKey => _$this._newKey ??= NewKeyBuilder();
  set newKey(NewKeyBuilder? newKey) => _$this._newKey = newKey;

  DKIMKeyRotateRequestBuilder() {
    DKIMKeyRotateRequest._defaults(this);
  }

  DKIMKeyRotateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newKey = $v.newKey.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DKIMKeyRotateRequest other) {
    _$v = other as _$DKIMKeyRotateRequest;
  }

  @override
  void update(void Function(DKIMKeyRotateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DKIMKeyRotateRequest build() => _build();

  _$DKIMKeyRotateRequest _build() {
    _$DKIMKeyRotateRequest _$result;
    try {
      _$result = _$v ?? _$DKIMKeyRotateRequest._(newKey: newKey.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'newKey';
        newKey.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DKIMKeyRotateRequest',
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

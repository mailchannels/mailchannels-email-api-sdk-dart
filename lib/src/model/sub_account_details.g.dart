// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_account_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubAccountDetails extends SubAccountDetails {
  @override
  final String? companyName;
  @override
  final bool enabled;
  @override
  final String handle;

  factory _$SubAccountDetails([
    void Function(SubAccountDetailsBuilder)? updates,
  ]) => (SubAccountDetailsBuilder()..update(updates))._build();

  _$SubAccountDetails._({
    this.companyName,
    required this.enabled,
    required this.handle,
  }) : super._();
  @override
  SubAccountDetails rebuild(void Function(SubAccountDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubAccountDetailsBuilder toBuilder() =>
      SubAccountDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubAccountDetails &&
        companyName == other.companyName &&
        enabled == other.enabled &&
        handle == other.handle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, companyName.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, handle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SubAccountDetailsBuilder
    implements Builder<SubAccountDetails, SubAccountDetailsBuilder> {
  _$SubAccountDetails? _$v;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _handle;
  String? get handle => _$this._handle;
  set handle(String? handle) => _$this._handle = handle;

  SubAccountDetailsBuilder() {
    SubAccountDetails._defaults(this);
  }

  SubAccountDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyName = $v.companyName;
      _enabled = $v.enabled;
      _handle = $v.handle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubAccountDetails other) {
    _$v = other as _$SubAccountDetails;
  }

  @override
  void update(void Function(SubAccountDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubAccountDetails build() => _build();

  _$SubAccountDetails _build() {
    final _$result =
        _$v ??
        _$SubAccountDetails._(
          companyName: companyName,
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'SubAccountDetails',
            'enabled',
          ),
          handle: BuiltValueNullFieldError.checkNotNull(
            handle,
            r'SubAccountDetails',
            'handle',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

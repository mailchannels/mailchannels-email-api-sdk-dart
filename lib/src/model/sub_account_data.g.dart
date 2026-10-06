// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_account_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubAccountData extends SubAccountData {
  @override
  final String companyName;
  @override
  final String? handle;

  factory _$SubAccountData([void Function(SubAccountDataBuilder)? updates]) =>
      (SubAccountDataBuilder()..update(updates))._build();

  _$SubAccountData._({required this.companyName, this.handle}) : super._();
  @override
  SubAccountData rebuild(void Function(SubAccountDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubAccountDataBuilder toBuilder() => SubAccountDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubAccountData &&
        companyName == other.companyName &&
        handle == other.handle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, companyName.hashCode);
    _$hash = $jc(_$hash, handle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SubAccountDataBuilder
    implements Builder<SubAccountData, SubAccountDataBuilder> {
  _$SubAccountData? _$v;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _handle;
  String? get handle => _$this._handle;
  set handle(String? handle) => _$this._handle = handle;

  SubAccountDataBuilder() {
    SubAccountData._defaults(this);
  }

  SubAccountDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyName = $v.companyName;
      _handle = $v.handle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubAccountData other) {
    _$v = other as _$SubAccountData;
  }

  @override
  void update(void Function(SubAccountDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubAccountData build() => _build();

  _$SubAccountData _build() {
    final _$result =
        _$v ??
        _$SubAccountData._(
          companyName: BuiltValueNullFieldError.checkNotNull(
            companyName,
            r'SubAccountData',
            'companyName',
          ),
          handle: handle,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

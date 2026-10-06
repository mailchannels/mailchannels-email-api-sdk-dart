// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dns_setup_required.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DnsSetupRequired extends DnsSetupRequired {
  @override
  final String? instructions;
  @override
  final String? token;
  @override
  final String? txtRecordName;
  @override
  final String? txtRecordValue;

  factory _$DnsSetupRequired([
    void Function(DnsSetupRequiredBuilder)? updates,
  ]) => (DnsSetupRequiredBuilder()..update(updates))._build();

  _$DnsSetupRequired._({
    this.instructions,
    this.token,
    this.txtRecordName,
    this.txtRecordValue,
  }) : super._();
  @override
  DnsSetupRequired rebuild(void Function(DnsSetupRequiredBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DnsSetupRequiredBuilder toBuilder() =>
      DnsSetupRequiredBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DnsSetupRequired &&
        instructions == other.instructions &&
        token == other.token &&
        txtRecordName == other.txtRecordName &&
        txtRecordValue == other.txtRecordValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instructions.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, txtRecordName.hashCode);
    _$hash = $jc(_$hash, txtRecordValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DnsSetupRequiredBuilder
    implements Builder<DnsSetupRequired, DnsSetupRequiredBuilder> {
  _$DnsSetupRequired? _$v;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _txtRecordName;
  String? get txtRecordName => _$this._txtRecordName;
  set txtRecordName(String? txtRecordName) =>
      _$this._txtRecordName = txtRecordName;

  String? _txtRecordValue;
  String? get txtRecordValue => _$this._txtRecordValue;
  set txtRecordValue(String? txtRecordValue) =>
      _$this._txtRecordValue = txtRecordValue;

  DnsSetupRequiredBuilder() {
    DnsSetupRequired._defaults(this);
  }

  DnsSetupRequiredBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instructions = $v.instructions;
      _token = $v.token;
      _txtRecordName = $v.txtRecordName;
      _txtRecordValue = $v.txtRecordValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DnsSetupRequired other) {
    _$v = other as _$DnsSetupRequired;
  }

  @override
  void update(void Function(DnsSetupRequiredBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DnsSetupRequired build() => _build();

  _$DnsSetupRequired _build() {
    final _$result =
        _$v ??
        _$DnsSetupRequired._(
          instructions: instructions,
          token: token,
          txtRecordName: txtRecordName,
          txtRecordValue: txtRecordValue,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

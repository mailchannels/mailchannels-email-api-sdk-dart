// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dkim_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DkimSetting extends DkimSetting {
  @override
  final String? dkimDomain;
  @override
  final String? dkimPrivateKey;
  @override
  final String? dkimSelector;

  factory _$DkimSetting([void Function(DkimSettingBuilder)? updates]) =>
      (DkimSettingBuilder()..update(updates))._build();

  _$DkimSetting._({this.dkimDomain, this.dkimPrivateKey, this.dkimSelector})
    : super._();
  @override
  DkimSetting rebuild(void Function(DkimSettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DkimSettingBuilder toBuilder() => DkimSettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DkimSetting &&
        dkimDomain == other.dkimDomain &&
        dkimPrivateKey == other.dkimPrivateKey &&
        dkimSelector == other.dkimSelector;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dkimDomain.hashCode);
    _$hash = $jc(_$hash, dkimPrivateKey.hashCode);
    _$hash = $jc(_$hash, dkimSelector.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DkimSettingBuilder implements Builder<DkimSetting, DkimSettingBuilder> {
  _$DkimSetting? _$v;

  String? _dkimDomain;
  String? get dkimDomain => _$this._dkimDomain;
  set dkimDomain(String? dkimDomain) => _$this._dkimDomain = dkimDomain;

  String? _dkimPrivateKey;
  String? get dkimPrivateKey => _$this._dkimPrivateKey;
  set dkimPrivateKey(String? dkimPrivateKey) =>
      _$this._dkimPrivateKey = dkimPrivateKey;

  String? _dkimSelector;
  String? get dkimSelector => _$this._dkimSelector;
  set dkimSelector(String? dkimSelector) => _$this._dkimSelector = dkimSelector;

  DkimSettingBuilder() {
    DkimSetting._defaults(this);
  }

  DkimSettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dkimDomain = $v.dkimDomain;
      _dkimPrivateKey = $v.dkimPrivateKey;
      _dkimSelector = $v.dkimSelector;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DkimSetting other) {
    _$v = other as _$DkimSetting;
  }

  @override
  void update(void Function(DkimSettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DkimSetting build() => _build();

  _$DkimSetting _build() {
    final _$result =
        _$v ??
        _$DkimSetting._(
          dkimDomain: dkimDomain,
          dkimPrivateKey: dkimPrivateKey,
          dkimSelector: dkimSelector,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

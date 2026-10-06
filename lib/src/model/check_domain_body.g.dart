// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_domain_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckDomainBody extends CheckDomainBody {
  @override
  final BuiltList<DkimSetting>? dkimSettings;
  @override
  final String domain;
  @override
  final String? envelopeFromDomain;
  @override
  final String? senderId;

  factory _$CheckDomainBody([void Function(CheckDomainBodyBuilder)? updates]) =>
      (CheckDomainBodyBuilder()..update(updates))._build();

  _$CheckDomainBody._({
    this.dkimSettings,
    required this.domain,
    this.envelopeFromDomain,
    this.senderId,
  }) : super._();
  @override
  CheckDomainBody rebuild(void Function(CheckDomainBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckDomainBodyBuilder toBuilder() => CheckDomainBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckDomainBody &&
        dkimSettings == other.dkimSettings &&
        domain == other.domain &&
        envelopeFromDomain == other.envelopeFromDomain &&
        senderId == other.senderId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dkimSettings.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, envelopeFromDomain.hashCode);
    _$hash = $jc(_$hash, senderId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CheckDomainBodyBuilder
    implements Builder<CheckDomainBody, CheckDomainBodyBuilder> {
  _$CheckDomainBody? _$v;

  ListBuilder<DkimSetting>? _dkimSettings;
  ListBuilder<DkimSetting> get dkimSettings =>
      _$this._dkimSettings ??= ListBuilder<DkimSetting>();
  set dkimSettings(ListBuilder<DkimSetting>? dkimSettings) =>
      _$this._dkimSettings = dkimSettings;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  String? _envelopeFromDomain;
  String? get envelopeFromDomain => _$this._envelopeFromDomain;
  set envelopeFromDomain(String? envelopeFromDomain) =>
      _$this._envelopeFromDomain = envelopeFromDomain;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  CheckDomainBodyBuilder() {
    CheckDomainBody._defaults(this);
  }

  CheckDomainBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dkimSettings = $v.dkimSettings?.toBuilder();
      _domain = $v.domain;
      _envelopeFromDomain = $v.envelopeFromDomain;
      _senderId = $v.senderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckDomainBody other) {
    _$v = other as _$CheckDomainBody;
  }

  @override
  void update(void Function(CheckDomainBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckDomainBody build() => _build();

  _$CheckDomainBody _build() {
    _$CheckDomainBody _$result;
    try {
      _$result =
          _$v ??
          _$CheckDomainBody._(
            dkimSettings: _dkimSettings?.build(),
            domain: BuiltValueNullFieldError.checkNotNull(
              domain,
              r'CheckDomainBody',
              'domain',
            ),
            envelopeFromDomain: envelopeFromDomain,
            senderId: senderId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dkimSettings';
        _dkimSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CheckDomainBody',
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

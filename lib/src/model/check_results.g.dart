// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_results.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckResults extends CheckResults {
  @override
  final BuiltList<DkimResult>? dkim;
  @override
  final LockdownResult? domainLockdown;
  @override
  final SenderDomainResult? senderDomain;
  @override
  final SpfResult? spf;

  factory _$CheckResults([void Function(CheckResultsBuilder)? updates]) =>
      (CheckResultsBuilder()..update(updates))._build();

  _$CheckResults._({
    this.dkim,
    this.domainLockdown,
    this.senderDomain,
    this.spf,
  }) : super._();
  @override
  CheckResults rebuild(void Function(CheckResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckResultsBuilder toBuilder() => CheckResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckResults &&
        dkim == other.dkim &&
        domainLockdown == other.domainLockdown &&
        senderDomain == other.senderDomain &&
        spf == other.spf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dkim.hashCode);
    _$hash = $jc(_$hash, domainLockdown.hashCode);
    _$hash = $jc(_$hash, senderDomain.hashCode);
    _$hash = $jc(_$hash, spf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CheckResultsBuilder
    implements Builder<CheckResults, CheckResultsBuilder> {
  _$CheckResults? _$v;

  ListBuilder<DkimResult>? _dkim;
  ListBuilder<DkimResult> get dkim =>
      _$this._dkim ??= ListBuilder<DkimResult>();
  set dkim(ListBuilder<DkimResult>? dkim) => _$this._dkim = dkim;

  LockdownResultBuilder? _domainLockdown;
  LockdownResultBuilder get domainLockdown =>
      _$this._domainLockdown ??= LockdownResultBuilder();
  set domainLockdown(LockdownResultBuilder? domainLockdown) =>
      _$this._domainLockdown = domainLockdown;

  SenderDomainResultBuilder? _senderDomain;
  SenderDomainResultBuilder get senderDomain =>
      _$this._senderDomain ??= SenderDomainResultBuilder();
  set senderDomain(SenderDomainResultBuilder? senderDomain) =>
      _$this._senderDomain = senderDomain;

  SpfResultBuilder? _spf;
  SpfResultBuilder get spf => _$this._spf ??= SpfResultBuilder();
  set spf(SpfResultBuilder? spf) => _$this._spf = spf;

  CheckResultsBuilder() {
    CheckResults._defaults(this);
  }

  CheckResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dkim = $v.dkim?.toBuilder();
      _domainLockdown = $v.domainLockdown?.toBuilder();
      _senderDomain = $v.senderDomain?.toBuilder();
      _spf = $v.spf?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckResults other) {
    _$v = other as _$CheckResults;
  }

  @override
  void update(void Function(CheckResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckResults build() => _build();

  _$CheckResults _build() {
    _$CheckResults _$result;
    try {
      _$result =
          _$v ??
          _$CheckResults._(
            dkim: _dkim?.build(),
            domainLockdown: _domainLockdown?.build(),
            senderDomain: _senderDomain?.build(),
            spf: _spf?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dkim';
        _dkim?.build();
        _$failedField = 'domainLockdown';
        _domainLockdown?.build();
        _$failedField = 'senderDomain';
        _senderDomain?.build();
        _$failedField = 'spf';
        _spf?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CheckResults',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Personalization extends Personalization {
  @override
  final BuiltList<EmailAddress>? bcc;
  @override
  final BuiltList<EmailAddress>? cc;
  @override
  final String? dkimDomain;
  @override
  final String? dkimPrivateKey;
  @override
  final String? dkimSelector;
  @override
  final JsonObject? dynamicTemplateData;
  @override
  final EmailAddress? envelopeFrom;
  @override
  final EmailAddress? from;
  @override
  final BuiltMap<String, String>? headers;
  @override
  final EmailAddress? replyTo;
  @override
  final String? subject;
  @override
  final BuiltList<EmailAddress> to;

  factory _$Personalization([void Function(PersonalizationBuilder)? updates]) =>
      (PersonalizationBuilder()..update(updates))._build();

  _$Personalization._({
    this.bcc,
    this.cc,
    this.dkimDomain,
    this.dkimPrivateKey,
    this.dkimSelector,
    this.dynamicTemplateData,
    this.envelopeFrom,
    this.from,
    this.headers,
    this.replyTo,
    this.subject,
    required this.to,
  }) : super._();
  @override
  Personalization rebuild(void Function(PersonalizationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonalizationBuilder toBuilder() => PersonalizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Personalization &&
        bcc == other.bcc &&
        cc == other.cc &&
        dkimDomain == other.dkimDomain &&
        dkimPrivateKey == other.dkimPrivateKey &&
        dkimSelector == other.dkimSelector &&
        dynamicTemplateData == other.dynamicTemplateData &&
        envelopeFrom == other.envelopeFrom &&
        from == other.from &&
        headers == other.headers &&
        replyTo == other.replyTo &&
        subject == other.subject &&
        to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bcc.hashCode);
    _$hash = $jc(_$hash, cc.hashCode);
    _$hash = $jc(_$hash, dkimDomain.hashCode);
    _$hash = $jc(_$hash, dkimPrivateKey.hashCode);
    _$hash = $jc(_$hash, dkimSelector.hashCode);
    _$hash = $jc(_$hash, dynamicTemplateData.hashCode);
    _$hash = $jc(_$hash, envelopeFrom.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, replyTo.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PersonalizationBuilder
    implements Builder<Personalization, PersonalizationBuilder> {
  _$Personalization? _$v;

  ListBuilder<EmailAddress>? _bcc;
  ListBuilder<EmailAddress> get bcc =>
      _$this._bcc ??= ListBuilder<EmailAddress>();
  set bcc(ListBuilder<EmailAddress>? bcc) => _$this._bcc = bcc;

  ListBuilder<EmailAddress>? _cc;
  ListBuilder<EmailAddress> get cc =>
      _$this._cc ??= ListBuilder<EmailAddress>();
  set cc(ListBuilder<EmailAddress>? cc) => _$this._cc = cc;

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

  JsonObject? _dynamicTemplateData;
  JsonObject? get dynamicTemplateData => _$this._dynamicTemplateData;
  set dynamicTemplateData(JsonObject? dynamicTemplateData) =>
      _$this._dynamicTemplateData = dynamicTemplateData;

  EmailAddressBuilder? _envelopeFrom;
  EmailAddressBuilder get envelopeFrom =>
      _$this._envelopeFrom ??= EmailAddressBuilder();
  set envelopeFrom(EmailAddressBuilder? envelopeFrom) =>
      _$this._envelopeFrom = envelopeFrom;

  EmailAddressBuilder? _from;
  EmailAddressBuilder get from => _$this._from ??= EmailAddressBuilder();
  set from(EmailAddressBuilder? from) => _$this._from = from;

  MapBuilder<String, String>? _headers;
  MapBuilder<String, String> get headers =>
      _$this._headers ??= MapBuilder<String, String>();
  set headers(MapBuilder<String, String>? headers) => _$this._headers = headers;

  EmailAddressBuilder? _replyTo;
  EmailAddressBuilder get replyTo => _$this._replyTo ??= EmailAddressBuilder();
  set replyTo(EmailAddressBuilder? replyTo) => _$this._replyTo = replyTo;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  ListBuilder<EmailAddress>? _to;
  ListBuilder<EmailAddress> get to =>
      _$this._to ??= ListBuilder<EmailAddress>();
  set to(ListBuilder<EmailAddress>? to) => _$this._to = to;

  PersonalizationBuilder() {
    Personalization._defaults(this);
  }

  PersonalizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bcc = $v.bcc?.toBuilder();
      _cc = $v.cc?.toBuilder();
      _dkimDomain = $v.dkimDomain;
      _dkimPrivateKey = $v.dkimPrivateKey;
      _dkimSelector = $v.dkimSelector;
      _dynamicTemplateData = $v.dynamicTemplateData;
      _envelopeFrom = $v.envelopeFrom?.toBuilder();
      _from = $v.from?.toBuilder();
      _headers = $v.headers?.toBuilder();
      _replyTo = $v.replyTo?.toBuilder();
      _subject = $v.subject;
      _to = $v.to.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Personalization other) {
    _$v = other as _$Personalization;
  }

  @override
  void update(void Function(PersonalizationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Personalization build() => _build();

  _$Personalization _build() {
    _$Personalization _$result;
    try {
      _$result =
          _$v ??
          _$Personalization._(
            bcc: _bcc?.build(),
            cc: _cc?.build(),
            dkimDomain: dkimDomain,
            dkimPrivateKey: dkimPrivateKey,
            dkimSelector: dkimSelector,
            dynamicTemplateData: dynamicTemplateData,
            envelopeFrom: _envelopeFrom?.build(),
            from: _from?.build(),
            headers: _headers?.build(),
            replyTo: _replyTo?.build(),
            subject: subject,
            to: to.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bcc';
        _bcc?.build();
        _$failedField = 'cc';
        _cc?.build();

        _$failedField = 'envelopeFrom';
        _envelopeFrom?.build();
        _$failedField = 'from';
        _from?.build();
        _$failedField = 'headers';
        _headers?.build();
        _$failedField = 'replyTo';
        _replyTo?.build();

        _$failedField = 'to';
        to.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Personalization',
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

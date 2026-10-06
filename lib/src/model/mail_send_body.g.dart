// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mail_send_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MailSendBody extends MailSendBody {
  @override
  final BuiltList<Attachment>? attachments;
  @override
  final String? campaignId;
  @override
  final BuiltList<ContentItem> content;
  @override
  final String? dkimDomain;
  @override
  final String? dkimPrivateKey;
  @override
  final String? dkimSelector;
  @override
  final EmailAddress? envelopeFrom;
  @override
  final EmailAddress from;
  @override
  final BuiltMap<String, String>? headers;
  @override
  final BuiltList<Personalization> personalizations;
  @override
  final EmailAddress? replyTo;
  @override
  final String subject;
  @override
  final MailSendBodyTrackingSettings? trackingSettings;
  @override
  final bool? transactional;
  @override
  final MailSendBodyUnsubscribeSettings? unsubscribeSettings;

  factory _$MailSendBody([void Function(MailSendBodyBuilder)? updates]) =>
      (MailSendBodyBuilder()..update(updates))._build();

  _$MailSendBody._({
    this.attachments,
    this.campaignId,
    required this.content,
    this.dkimDomain,
    this.dkimPrivateKey,
    this.dkimSelector,
    this.envelopeFrom,
    required this.from,
    this.headers,
    required this.personalizations,
    this.replyTo,
    required this.subject,
    this.trackingSettings,
    this.transactional,
    this.unsubscribeSettings,
  }) : super._();
  @override
  MailSendBody rebuild(void Function(MailSendBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MailSendBodyBuilder toBuilder() => MailSendBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MailSendBody &&
        attachments == other.attachments &&
        campaignId == other.campaignId &&
        content == other.content &&
        dkimDomain == other.dkimDomain &&
        dkimPrivateKey == other.dkimPrivateKey &&
        dkimSelector == other.dkimSelector &&
        envelopeFrom == other.envelopeFrom &&
        from == other.from &&
        headers == other.headers &&
        personalizations == other.personalizations &&
        replyTo == other.replyTo &&
        subject == other.subject &&
        trackingSettings == other.trackingSettings &&
        transactional == other.transactional &&
        unsubscribeSettings == other.unsubscribeSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachments.hashCode);
    _$hash = $jc(_$hash, campaignId.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, dkimDomain.hashCode);
    _$hash = $jc(_$hash, dkimPrivateKey.hashCode);
    _$hash = $jc(_$hash, dkimSelector.hashCode);
    _$hash = $jc(_$hash, envelopeFrom.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, personalizations.hashCode);
    _$hash = $jc(_$hash, replyTo.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, trackingSettings.hashCode);
    _$hash = $jc(_$hash, transactional.hashCode);
    _$hash = $jc(_$hash, unsubscribeSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MailSendBodyBuilder
    implements Builder<MailSendBody, MailSendBodyBuilder> {
  _$MailSendBody? _$v;

  ListBuilder<Attachment>? _attachments;
  ListBuilder<Attachment> get attachments =>
      _$this._attachments ??= ListBuilder<Attachment>();
  set attachments(ListBuilder<Attachment>? attachments) =>
      _$this._attachments = attachments;

  String? _campaignId;
  String? get campaignId => _$this._campaignId;
  set campaignId(String? campaignId) => _$this._campaignId = campaignId;

  ListBuilder<ContentItem>? _content;
  ListBuilder<ContentItem> get content =>
      _$this._content ??= ListBuilder<ContentItem>();
  set content(ListBuilder<ContentItem>? content) => _$this._content = content;

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

  ListBuilder<Personalization>? _personalizations;
  ListBuilder<Personalization> get personalizations =>
      _$this._personalizations ??= ListBuilder<Personalization>();
  set personalizations(ListBuilder<Personalization>? personalizations) =>
      _$this._personalizations = personalizations;

  EmailAddressBuilder? _replyTo;
  EmailAddressBuilder get replyTo => _$this._replyTo ??= EmailAddressBuilder();
  set replyTo(EmailAddressBuilder? replyTo) => _$this._replyTo = replyTo;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  MailSendBodyTrackingSettingsBuilder? _trackingSettings;
  MailSendBodyTrackingSettingsBuilder get trackingSettings =>
      _$this._trackingSettings ??= MailSendBodyTrackingSettingsBuilder();
  set trackingSettings(MailSendBodyTrackingSettingsBuilder? trackingSettings) =>
      _$this._trackingSettings = trackingSettings;

  bool? _transactional;
  bool? get transactional => _$this._transactional;
  set transactional(bool? transactional) =>
      _$this._transactional = transactional;

  MailSendBodyUnsubscribeSettingsBuilder? _unsubscribeSettings;
  MailSendBodyUnsubscribeSettingsBuilder get unsubscribeSettings =>
      _$this._unsubscribeSettings ??= MailSendBodyUnsubscribeSettingsBuilder();
  set unsubscribeSettings(
    MailSendBodyUnsubscribeSettingsBuilder? unsubscribeSettings,
  ) => _$this._unsubscribeSettings = unsubscribeSettings;

  MailSendBodyBuilder() {
    MailSendBody._defaults(this);
  }

  MailSendBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachments = $v.attachments?.toBuilder();
      _campaignId = $v.campaignId;
      _content = $v.content.toBuilder();
      _dkimDomain = $v.dkimDomain;
      _dkimPrivateKey = $v.dkimPrivateKey;
      _dkimSelector = $v.dkimSelector;
      _envelopeFrom = $v.envelopeFrom?.toBuilder();
      _from = $v.from.toBuilder();
      _headers = $v.headers?.toBuilder();
      _personalizations = $v.personalizations.toBuilder();
      _replyTo = $v.replyTo?.toBuilder();
      _subject = $v.subject;
      _trackingSettings = $v.trackingSettings?.toBuilder();
      _transactional = $v.transactional;
      _unsubscribeSettings = $v.unsubscribeSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MailSendBody other) {
    _$v = other as _$MailSendBody;
  }

  @override
  void update(void Function(MailSendBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MailSendBody build() => _build();

  _$MailSendBody _build() {
    _$MailSendBody _$result;
    try {
      _$result =
          _$v ??
          _$MailSendBody._(
            attachments: _attachments?.build(),
            campaignId: campaignId,
            content: content.build(),
            dkimDomain: dkimDomain,
            dkimPrivateKey: dkimPrivateKey,
            dkimSelector: dkimSelector,
            envelopeFrom: _envelopeFrom?.build(),
            from: from.build(),
            headers: _headers?.build(),
            personalizations: personalizations.build(),
            replyTo: _replyTo?.build(),
            subject: BuiltValueNullFieldError.checkNotNull(
              subject,
              r'MailSendBody',
              'subject',
            ),
            trackingSettings: _trackingSettings?.build(),
            transactional: transactional,
            unsubscribeSettings: _unsubscribeSettings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();

        _$failedField = 'content';
        content.build();

        _$failedField = 'envelopeFrom';
        _envelopeFrom?.build();
        _$failedField = 'from';
        from.build();
        _$failedField = 'headers';
        _headers?.build();
        _$failedField = 'personalizations';
        personalizations.build();
        _$failedField = 'replyTo';
        _replyTo?.build();

        _$failedField = 'trackingSettings';
        _trackingSettings?.build();

        _$failedField = 'unsubscribeSettings';
        _unsubscribeSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MailSendBody',
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

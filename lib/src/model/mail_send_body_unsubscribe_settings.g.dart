// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mail_send_body_unsubscribe_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MailSendBodyUnsubscribeSettings
    extends MailSendBodyUnsubscribeSettings {
  @override
  final String? customDomainName;

  factory _$MailSendBodyUnsubscribeSettings([
    void Function(MailSendBodyUnsubscribeSettingsBuilder)? updates,
  ]) => (MailSendBodyUnsubscribeSettingsBuilder()..update(updates))._build();

  _$MailSendBodyUnsubscribeSettings._({this.customDomainName}) : super._();
  @override
  MailSendBodyUnsubscribeSettings rebuild(
    void Function(MailSendBodyUnsubscribeSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MailSendBodyUnsubscribeSettingsBuilder toBuilder() =>
      MailSendBodyUnsubscribeSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MailSendBodyUnsubscribeSettings &&
        customDomainName == other.customDomainName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customDomainName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MailSendBodyUnsubscribeSettingsBuilder
    implements
        Builder<
          MailSendBodyUnsubscribeSettings,
          MailSendBodyUnsubscribeSettingsBuilder
        > {
  _$MailSendBodyUnsubscribeSettings? _$v;

  String? _customDomainName;
  String? get customDomainName => _$this._customDomainName;
  set customDomainName(String? customDomainName) =>
      _$this._customDomainName = customDomainName;

  MailSendBodyUnsubscribeSettingsBuilder() {
    MailSendBodyUnsubscribeSettings._defaults(this);
  }

  MailSendBodyUnsubscribeSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customDomainName = $v.customDomainName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MailSendBodyUnsubscribeSettings other) {
    _$v = other as _$MailSendBodyUnsubscribeSettings;
  }

  @override
  void update(void Function(MailSendBodyUnsubscribeSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MailSendBodyUnsubscribeSettings build() => _build();

  _$MailSendBodyUnsubscribeSettings _build() {
    final _$result =
        _$v ??
        _$MailSendBodyUnsubscribeSettings._(customDomainName: customDomainName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

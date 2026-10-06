// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mail_send_body_tracking_settings_click_tracking.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MailSendBodyTrackingSettingsClickTracking
    extends MailSendBodyTrackingSettingsClickTracking {
  @override
  final String? customDomainName;
  @override
  final bool? enable;

  factory _$MailSendBodyTrackingSettingsClickTracking([
    void Function(MailSendBodyTrackingSettingsClickTrackingBuilder)? updates,
  ]) => (MailSendBodyTrackingSettingsClickTrackingBuilder()..update(updates))
      ._build();

  _$MailSendBodyTrackingSettingsClickTracking._({
    this.customDomainName,
    this.enable,
  }) : super._();
  @override
  MailSendBodyTrackingSettingsClickTracking rebuild(
    void Function(MailSendBodyTrackingSettingsClickTrackingBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MailSendBodyTrackingSettingsClickTrackingBuilder toBuilder() =>
      MailSendBodyTrackingSettingsClickTrackingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MailSendBodyTrackingSettingsClickTracking &&
        customDomainName == other.customDomainName &&
        enable == other.enable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customDomainName.hashCode);
    _$hash = $jc(_$hash, enable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MailSendBodyTrackingSettingsClickTrackingBuilder
    implements
        Builder<
          MailSendBodyTrackingSettingsClickTracking,
          MailSendBodyTrackingSettingsClickTrackingBuilder
        > {
  _$MailSendBodyTrackingSettingsClickTracking? _$v;

  String? _customDomainName;
  String? get customDomainName => _$this._customDomainName;
  set customDomainName(String? customDomainName) =>
      _$this._customDomainName = customDomainName;

  bool? _enable;
  bool? get enable => _$this._enable;
  set enable(bool? enable) => _$this._enable = enable;

  MailSendBodyTrackingSettingsClickTrackingBuilder() {
    MailSendBodyTrackingSettingsClickTracking._defaults(this);
  }

  MailSendBodyTrackingSettingsClickTrackingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customDomainName = $v.customDomainName;
      _enable = $v.enable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MailSendBodyTrackingSettingsClickTracking other) {
    _$v = other as _$MailSendBodyTrackingSettingsClickTracking;
  }

  @override
  void update(
    void Function(MailSendBodyTrackingSettingsClickTrackingBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MailSendBodyTrackingSettingsClickTracking build() => _build();

  _$MailSendBodyTrackingSettingsClickTracking _build() {
    final _$result =
        _$v ??
        _$MailSendBodyTrackingSettingsClickTracking._(
          customDomainName: customDomainName,
          enable: enable,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

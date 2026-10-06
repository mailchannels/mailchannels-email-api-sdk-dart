// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mail_send_body_tracking_settings_open_tracking.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MailSendBodyTrackingSettingsOpenTracking
    extends MailSendBodyTrackingSettingsOpenTracking {
  @override
  final String? customDomainName;
  @override
  final bool? enable;

  factory _$MailSendBodyTrackingSettingsOpenTracking([
    void Function(MailSendBodyTrackingSettingsOpenTrackingBuilder)? updates,
  ]) => (MailSendBodyTrackingSettingsOpenTrackingBuilder()..update(updates))
      ._build();

  _$MailSendBodyTrackingSettingsOpenTracking._({
    this.customDomainName,
    this.enable,
  }) : super._();
  @override
  MailSendBodyTrackingSettingsOpenTracking rebuild(
    void Function(MailSendBodyTrackingSettingsOpenTrackingBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MailSendBodyTrackingSettingsOpenTrackingBuilder toBuilder() =>
      MailSendBodyTrackingSettingsOpenTrackingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MailSendBodyTrackingSettingsOpenTracking &&
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

class MailSendBodyTrackingSettingsOpenTrackingBuilder
    implements
        Builder<
          MailSendBodyTrackingSettingsOpenTracking,
          MailSendBodyTrackingSettingsOpenTrackingBuilder
        > {
  _$MailSendBodyTrackingSettingsOpenTracking? _$v;

  String? _customDomainName;
  String? get customDomainName => _$this._customDomainName;
  set customDomainName(String? customDomainName) =>
      _$this._customDomainName = customDomainName;

  bool? _enable;
  bool? get enable => _$this._enable;
  set enable(bool? enable) => _$this._enable = enable;

  MailSendBodyTrackingSettingsOpenTrackingBuilder() {
    MailSendBodyTrackingSettingsOpenTracking._defaults(this);
  }

  MailSendBodyTrackingSettingsOpenTrackingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customDomainName = $v.customDomainName;
      _enable = $v.enable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MailSendBodyTrackingSettingsOpenTracking other) {
    _$v = other as _$MailSendBodyTrackingSettingsOpenTracking;
  }

  @override
  void update(
    void Function(MailSendBodyTrackingSettingsOpenTrackingBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MailSendBodyTrackingSettingsOpenTracking build() => _build();

  _$MailSendBodyTrackingSettingsOpenTracking _build() {
    final _$result =
        _$v ??
        _$MailSendBodyTrackingSettingsOpenTracking._(
          customDomainName: customDomainName,
          enable: enable,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

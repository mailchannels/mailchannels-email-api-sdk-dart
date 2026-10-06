// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mail_send_body_tracking_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MailSendBodyTrackingSettings extends MailSendBodyTrackingSettings {
  @override
  final MailSendBodyTrackingSettingsClickTracking? clickTracking;
  @override
  final MailSendBodyTrackingSettingsOpenTracking? openTracking;

  factory _$MailSendBodyTrackingSettings([
    void Function(MailSendBodyTrackingSettingsBuilder)? updates,
  ]) => (MailSendBodyTrackingSettingsBuilder()..update(updates))._build();

  _$MailSendBodyTrackingSettings._({this.clickTracking, this.openTracking})
    : super._();
  @override
  MailSendBodyTrackingSettings rebuild(
    void Function(MailSendBodyTrackingSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MailSendBodyTrackingSettingsBuilder toBuilder() =>
      MailSendBodyTrackingSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MailSendBodyTrackingSettings &&
        clickTracking == other.clickTracking &&
        openTracking == other.openTracking;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clickTracking.hashCode);
    _$hash = $jc(_$hash, openTracking.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MailSendBodyTrackingSettingsBuilder
    implements
        Builder<
          MailSendBodyTrackingSettings,
          MailSendBodyTrackingSettingsBuilder
        > {
  _$MailSendBodyTrackingSettings? _$v;

  MailSendBodyTrackingSettingsClickTrackingBuilder? _clickTracking;
  MailSendBodyTrackingSettingsClickTrackingBuilder get clickTracking =>
      _$this._clickTracking ??=
          MailSendBodyTrackingSettingsClickTrackingBuilder();
  set clickTracking(
    MailSendBodyTrackingSettingsClickTrackingBuilder? clickTracking,
  ) => _$this._clickTracking = clickTracking;

  MailSendBodyTrackingSettingsOpenTrackingBuilder? _openTracking;
  MailSendBodyTrackingSettingsOpenTrackingBuilder get openTracking =>
      _$this._openTracking ??=
          MailSendBodyTrackingSettingsOpenTrackingBuilder();
  set openTracking(
    MailSendBodyTrackingSettingsOpenTrackingBuilder? openTracking,
  ) => _$this._openTracking = openTracking;

  MailSendBodyTrackingSettingsBuilder() {
    MailSendBodyTrackingSettings._defaults(this);
  }

  MailSendBodyTrackingSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clickTracking = $v.clickTracking?.toBuilder();
      _openTracking = $v.openTracking?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MailSendBodyTrackingSettings other) {
    _$v = other as _$MailSendBodyTrackingSettings;
  }

  @override
  void update(void Function(MailSendBodyTrackingSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MailSendBodyTrackingSettings build() => _build();

  _$MailSendBodyTrackingSettings _build() {
    _$MailSendBodyTrackingSettings _$result;
    try {
      _$result =
          _$v ??
          _$MailSendBodyTrackingSettings._(
            clickTracking: _clickTracking?.build(),
            openTracking: _openTracking?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clickTracking';
        _clickTracking?.build();
        _$failedField = 'openTracking';
        _openTracking?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MailSendBodyTrackingSettings',
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

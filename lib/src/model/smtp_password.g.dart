// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smtp_password.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SMTPPassword extends SMTPPassword {
  @override
  final bool? enabled;
  @override
  final int? id;
  @override
  final String? smtpPassword;

  factory _$SMTPPassword([void Function(SMTPPasswordBuilder)? updates]) =>
      (SMTPPasswordBuilder()..update(updates))._build();

  _$SMTPPassword._({this.enabled, this.id, this.smtpPassword}) : super._();
  @override
  SMTPPassword rebuild(void Function(SMTPPasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SMTPPasswordBuilder toBuilder() => SMTPPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SMTPPassword &&
        enabled == other.enabled &&
        id == other.id &&
        smtpPassword == other.smtpPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, smtpPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SMTPPasswordBuilder
    implements Builder<SMTPPassword, SMTPPasswordBuilder> {
  _$SMTPPassword? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _smtpPassword;
  String? get smtpPassword => _$this._smtpPassword;
  set smtpPassword(String? smtpPassword) => _$this._smtpPassword = smtpPassword;

  SMTPPasswordBuilder() {
    SMTPPassword._defaults(this);
  }

  SMTPPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _id = $v.id;
      _smtpPassword = $v.smtpPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SMTPPassword other) {
    _$v = other as _$SMTPPassword;
  }

  @override
  void update(void Function(SMTPPasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SMTPPassword build() => _build();

  _$SMTPPassword _build() {
    final _$result =
        _$v ??
        _$SMTPPassword._(enabled: enabled, id: id, smtpPassword: smtpPassword);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

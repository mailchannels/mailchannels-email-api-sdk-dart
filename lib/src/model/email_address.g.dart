// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailAddress extends EmailAddress {
  @override
  final String email;
  @override
  final String? name;

  factory _$EmailAddress([void Function(EmailAddressBuilder)? updates]) =>
      (EmailAddressBuilder()..update(updates))._build();

  _$EmailAddress._({required this.email, this.name}) : super._();
  @override
  EmailAddress rebuild(void Function(EmailAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailAddressBuilder toBuilder() => EmailAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailAddress && email == other.email && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EmailAddressBuilder
    implements Builder<EmailAddress, EmailAddressBuilder> {
  _$EmailAddress? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EmailAddressBuilder() {
    EmailAddress._defaults(this);
  }

  EmailAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailAddress other) {
    _$v = other as _$EmailAddress;
  }

  @override
  void update(void Function(EmailAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailAddress build() => _build();

  _$EmailAddress _build() {
    final _$result =
        _$v ??
        _$EmailAddress._(
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'EmailAddress',
            'email',
          ),
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

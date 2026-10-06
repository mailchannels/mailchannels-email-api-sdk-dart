// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dkim_dns_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DKIMDnsRecord extends DKIMDnsRecord {
  @override
  final String name;
  @override
  final String type;
  @override
  final String value;

  factory _$DKIMDnsRecord([void Function(DKIMDnsRecordBuilder)? updates]) =>
      (DKIMDnsRecordBuilder()..update(updates))._build();

  _$DKIMDnsRecord._({
    required this.name,
    required this.type,
    required this.value,
  }) : super._();
  @override
  DKIMDnsRecord rebuild(void Function(DKIMDnsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DKIMDnsRecordBuilder toBuilder() => DKIMDnsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DKIMDnsRecord &&
        name == other.name &&
        type == other.type &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DKIMDnsRecordBuilder
    implements Builder<DKIMDnsRecord, DKIMDnsRecordBuilder> {
  _$DKIMDnsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  DKIMDnsRecordBuilder() {
    DKIMDnsRecord._defaults(this);
  }

  DKIMDnsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DKIMDnsRecord other) {
    _$v = other as _$DKIMDnsRecord;
  }

  @override
  void update(void Function(DKIMDnsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DKIMDnsRecord build() => _build();

  _$DKIMDnsRecord _build() {
    final _$result =
        _$v ??
        _$DKIMDnsRecord._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'DKIMDnsRecord',
            'name',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DKIMDnsRecord',
            'type',
          ),
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'DKIMDnsRecord',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dkim_key_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DKIMKeyInfoStatusEnum _$dKIMKeyInfoStatusEnum_active =
    const DKIMKeyInfoStatusEnum._('active');
const DKIMKeyInfoStatusEnum _$dKIMKeyInfoStatusEnum_retired =
    const DKIMKeyInfoStatusEnum._('retired');
const DKIMKeyInfoStatusEnum _$dKIMKeyInfoStatusEnum_revoked =
    const DKIMKeyInfoStatusEnum._('revoked');
const DKIMKeyInfoStatusEnum _$dKIMKeyInfoStatusEnum_rotated =
    const DKIMKeyInfoStatusEnum._('rotated');

DKIMKeyInfoStatusEnum _$dKIMKeyInfoStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$dKIMKeyInfoStatusEnum_active;
    case 'retired':
      return _$dKIMKeyInfoStatusEnum_retired;
    case 'revoked':
      return _$dKIMKeyInfoStatusEnum_revoked;
    case 'rotated':
      return _$dKIMKeyInfoStatusEnum_rotated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DKIMKeyInfoStatusEnum> _$dKIMKeyInfoStatusEnumValues =
    BuiltSet<DKIMKeyInfoStatusEnum>(const <DKIMKeyInfoStatusEnum>[
      _$dKIMKeyInfoStatusEnum_active,
      _$dKIMKeyInfoStatusEnum_retired,
      _$dKIMKeyInfoStatusEnum_revoked,
      _$dKIMKeyInfoStatusEnum_rotated,
    ]);

Serializer<DKIMKeyInfoStatusEnum> _$dKIMKeyInfoStatusEnumSerializer =
    _$DKIMKeyInfoStatusEnumSerializer();

class _$DKIMKeyInfoStatusEnumSerializer
    implements PrimitiveSerializer<DKIMKeyInfoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'retired': 'retired',
    'revoked': 'revoked',
    'rotated': 'rotated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'retired': 'retired',
    'revoked': 'revoked',
    'rotated': 'rotated',
  };

  @override
  final Iterable<Type> types = const <Type>[DKIMKeyInfoStatusEnum];
  @override
  final String wireName = 'DKIMKeyInfoStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DKIMKeyInfoStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DKIMKeyInfoStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DKIMKeyInfoStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DKIMKeyInfo extends DKIMKeyInfo {
  @override
  final String algorithm;
  @override
  final DateTime? createdAt;
  @override
  final BuiltList<DKIMDnsRecord?>? dkimDnsRecords;
  @override
  final String domain;
  @override
  final DateTime? gracePeriodExpiresAt;
  @override
  final int? keyLength;
  @override
  final String publicKey;
  @override
  final DateTime? retiresAt;
  @override
  final String selector;
  @override
  final DKIMKeyInfoStatusEnum status;
  @override
  final DateTime? statusModifiedAt;

  factory _$DKIMKeyInfo([void Function(DKIMKeyInfoBuilder)? updates]) =>
      (DKIMKeyInfoBuilder()..update(updates))._build();

  _$DKIMKeyInfo._({
    required this.algorithm,
    this.createdAt,
    this.dkimDnsRecords,
    required this.domain,
    this.gracePeriodExpiresAt,
    this.keyLength,
    required this.publicKey,
    this.retiresAt,
    required this.selector,
    required this.status,
    this.statusModifiedAt,
  }) : super._();
  @override
  DKIMKeyInfo rebuild(void Function(DKIMKeyInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DKIMKeyInfoBuilder toBuilder() => DKIMKeyInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DKIMKeyInfo &&
        algorithm == other.algorithm &&
        createdAt == other.createdAt &&
        dkimDnsRecords == other.dkimDnsRecords &&
        domain == other.domain &&
        gracePeriodExpiresAt == other.gracePeriodExpiresAt &&
        keyLength == other.keyLength &&
        publicKey == other.publicKey &&
        retiresAt == other.retiresAt &&
        selector == other.selector &&
        status == other.status &&
        statusModifiedAt == other.statusModifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, algorithm.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, dkimDnsRecords.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, gracePeriodExpiresAt.hashCode);
    _$hash = $jc(_$hash, keyLength.hashCode);
    _$hash = $jc(_$hash, publicKey.hashCode);
    _$hash = $jc(_$hash, retiresAt.hashCode);
    _$hash = $jc(_$hash, selector.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusModifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DKIMKeyInfoBuilder implements Builder<DKIMKeyInfo, DKIMKeyInfoBuilder> {
  _$DKIMKeyInfo? _$v;

  String? _algorithm;
  String? get algorithm => _$this._algorithm;
  set algorithm(String? algorithm) => _$this._algorithm = algorithm;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<DKIMDnsRecord?>? _dkimDnsRecords;
  ListBuilder<DKIMDnsRecord?> get dkimDnsRecords =>
      _$this._dkimDnsRecords ??= ListBuilder<DKIMDnsRecord?>();
  set dkimDnsRecords(ListBuilder<DKIMDnsRecord?>? dkimDnsRecords) =>
      _$this._dkimDnsRecords = dkimDnsRecords;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  DateTime? _gracePeriodExpiresAt;
  DateTime? get gracePeriodExpiresAt => _$this._gracePeriodExpiresAt;
  set gracePeriodExpiresAt(DateTime? gracePeriodExpiresAt) =>
      _$this._gracePeriodExpiresAt = gracePeriodExpiresAt;

  int? _keyLength;
  int? get keyLength => _$this._keyLength;
  set keyLength(int? keyLength) => _$this._keyLength = keyLength;

  String? _publicKey;
  String? get publicKey => _$this._publicKey;
  set publicKey(String? publicKey) => _$this._publicKey = publicKey;

  DateTime? _retiresAt;
  DateTime? get retiresAt => _$this._retiresAt;
  set retiresAt(DateTime? retiresAt) => _$this._retiresAt = retiresAt;

  String? _selector;
  String? get selector => _$this._selector;
  set selector(String? selector) => _$this._selector = selector;

  DKIMKeyInfoStatusEnum? _status;
  DKIMKeyInfoStatusEnum? get status => _$this._status;
  set status(DKIMKeyInfoStatusEnum? status) => _$this._status = status;

  DateTime? _statusModifiedAt;
  DateTime? get statusModifiedAt => _$this._statusModifiedAt;
  set statusModifiedAt(DateTime? statusModifiedAt) =>
      _$this._statusModifiedAt = statusModifiedAt;

  DKIMKeyInfoBuilder() {
    DKIMKeyInfo._defaults(this);
  }

  DKIMKeyInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _algorithm = $v.algorithm;
      _createdAt = $v.createdAt;
      _dkimDnsRecords = $v.dkimDnsRecords?.toBuilder();
      _domain = $v.domain;
      _gracePeriodExpiresAt = $v.gracePeriodExpiresAt;
      _keyLength = $v.keyLength;
      _publicKey = $v.publicKey;
      _retiresAt = $v.retiresAt;
      _selector = $v.selector;
      _status = $v.status;
      _statusModifiedAt = $v.statusModifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DKIMKeyInfo other) {
    _$v = other as _$DKIMKeyInfo;
  }

  @override
  void update(void Function(DKIMKeyInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DKIMKeyInfo build() => _build();

  _$DKIMKeyInfo _build() {
    _$DKIMKeyInfo _$result;
    try {
      _$result =
          _$v ??
          _$DKIMKeyInfo._(
            algorithm: BuiltValueNullFieldError.checkNotNull(
              algorithm,
              r'DKIMKeyInfo',
              'algorithm',
            ),
            createdAt: createdAt,
            dkimDnsRecords: _dkimDnsRecords?.build(),
            domain: BuiltValueNullFieldError.checkNotNull(
              domain,
              r'DKIMKeyInfo',
              'domain',
            ),
            gracePeriodExpiresAt: gracePeriodExpiresAt,
            keyLength: keyLength,
            publicKey: BuiltValueNullFieldError.checkNotNull(
              publicKey,
              r'DKIMKeyInfo',
              'publicKey',
            ),
            retiresAt: retiresAt,
            selector: BuiltValueNullFieldError.checkNotNull(
              selector,
              r'DKIMKeyInfo',
              'selector',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'DKIMKeyInfo',
              'status',
            ),
            statusModifiedAt: statusModifiedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dkimDnsRecords';
        _dkimDnsRecords?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DKIMKeyInfo',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_tracking_domain.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CustomTrackingDomainScopeEnum _$customTrackingDomainScopeEnum_click =
    const CustomTrackingDomainScopeEnum._('click');
const CustomTrackingDomainScopeEnum _$customTrackingDomainScopeEnum_open =
    const CustomTrackingDomainScopeEnum._('open');
const CustomTrackingDomainScopeEnum
_$customTrackingDomainScopeEnum_unsubscribe =
    const CustomTrackingDomainScopeEnum._('unsubscribe');

CustomTrackingDomainScopeEnum _$customTrackingDomainScopeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'click':
      return _$customTrackingDomainScopeEnum_click;
    case 'open':
      return _$customTrackingDomainScopeEnum_open;
    case 'unsubscribe':
      return _$customTrackingDomainScopeEnum_unsubscribe;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CustomTrackingDomainScopeEnum>
_$customTrackingDomainScopeEnumValues = BuiltSet<CustomTrackingDomainScopeEnum>(
  const <CustomTrackingDomainScopeEnum>[
    _$customTrackingDomainScopeEnum_click,
    _$customTrackingDomainScopeEnum_open,
    _$customTrackingDomainScopeEnum_unsubscribe,
  ],
);

const CustomTrackingDomainStatusEnum _$customTrackingDomainStatusEnum_active =
    const CustomTrackingDomainStatusEnum._('active');
const CustomTrackingDomainStatusEnum _$customTrackingDomainStatusEnum_disabled =
    const CustomTrackingDomainStatusEnum._('disabled');

CustomTrackingDomainStatusEnum _$customTrackingDomainStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'active':
      return _$customTrackingDomainStatusEnum_active;
    case 'disabled':
      return _$customTrackingDomainStatusEnum_disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CustomTrackingDomainStatusEnum>
_$customTrackingDomainStatusEnumValues =
    BuiltSet<CustomTrackingDomainStatusEnum>(
      const <CustomTrackingDomainStatusEnum>[
        _$customTrackingDomainStatusEnum_active,
        _$customTrackingDomainStatusEnum_disabled,
      ],
    );

Serializer<CustomTrackingDomainScopeEnum>
_$customTrackingDomainScopeEnumSerializer =
    _$CustomTrackingDomainScopeEnumSerializer();
Serializer<CustomTrackingDomainStatusEnum>
_$customTrackingDomainStatusEnumSerializer =
    _$CustomTrackingDomainStatusEnumSerializer();

class _$CustomTrackingDomainScopeEnumSerializer
    implements PrimitiveSerializer<CustomTrackingDomainScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'click': 'click',
    'open': 'open',
    'unsubscribe': 'unsubscribe',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'click': 'click',
    'open': 'open',
    'unsubscribe': 'unsubscribe',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomTrackingDomainScopeEnum];
  @override
  final String wireName = 'CustomTrackingDomainScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    CustomTrackingDomainScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CustomTrackingDomainScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CustomTrackingDomainScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CustomTrackingDomainStatusEnumSerializer
    implements PrimitiveSerializer<CustomTrackingDomainStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'disabled': 'disabled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'disabled': 'disabled',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomTrackingDomainStatusEnum];
  @override
  final String wireName = 'CustomTrackingDomainStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    CustomTrackingDomainStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CustomTrackingDomainStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CustomTrackingDomainStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CustomTrackingDomain extends CustomTrackingDomain {
  @override
  final DateTime createdAt;
  @override
  final String hostname;
  @override
  final String name;
  @override
  final CustomTrackingDomainScopeEnum scope;
  @override
  final CustomTrackingDomainStatusEnum status;

  factory _$CustomTrackingDomain([
    void Function(CustomTrackingDomainBuilder)? updates,
  ]) => (CustomTrackingDomainBuilder()..update(updates))._build();

  _$CustomTrackingDomain._({
    required this.createdAt,
    required this.hostname,
    required this.name,
    required this.scope,
    required this.status,
  }) : super._();
  @override
  CustomTrackingDomain rebuild(
    void Function(CustomTrackingDomainBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomTrackingDomainBuilder toBuilder() =>
      CustomTrackingDomainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomTrackingDomain &&
        createdAt == other.createdAt &&
        hostname == other.hostname &&
        name == other.name &&
        scope == other.scope &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, hostname.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CustomTrackingDomainBuilder
    implements Builder<CustomTrackingDomain, CustomTrackingDomainBuilder> {
  _$CustomTrackingDomain? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _hostname;
  String? get hostname => _$this._hostname;
  set hostname(String? hostname) => _$this._hostname = hostname;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CustomTrackingDomainScopeEnum? _scope;
  CustomTrackingDomainScopeEnum? get scope => _$this._scope;
  set scope(CustomTrackingDomainScopeEnum? scope) => _$this._scope = scope;

  CustomTrackingDomainStatusEnum? _status;
  CustomTrackingDomainStatusEnum? get status => _$this._status;
  set status(CustomTrackingDomainStatusEnum? status) => _$this._status = status;

  CustomTrackingDomainBuilder() {
    CustomTrackingDomain._defaults(this);
  }

  CustomTrackingDomainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _hostname = $v.hostname;
      _name = $v.name;
      _scope = $v.scope;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomTrackingDomain other) {
    _$v = other as _$CustomTrackingDomain;
  }

  @override
  void update(void Function(CustomTrackingDomainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomTrackingDomain build() => _build();

  _$CustomTrackingDomain _build() {
    final _$result =
        _$v ??
        _$CustomTrackingDomain._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'CustomTrackingDomain',
            'createdAt',
          ),
          hostname: BuiltValueNullFieldError.checkNotNull(
            hostname,
            r'CustomTrackingDomain',
            'hostname',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CustomTrackingDomain',
            'name',
          ),
          scope: BuiltValueNullFieldError.checkNotNull(
            scope,
            r'CustomTrackingDomain',
            'scope',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'CustomTrackingDomain',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

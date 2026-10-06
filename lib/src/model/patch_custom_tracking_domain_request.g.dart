// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_custom_tracking_domain_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchCustomTrackingDomainRequestStatusEnum
_$patchCustomTrackingDomainRequestStatusEnum_active =
    const PatchCustomTrackingDomainRequestStatusEnum._('active');
const PatchCustomTrackingDomainRequestStatusEnum
_$patchCustomTrackingDomainRequestStatusEnum_disabled =
    const PatchCustomTrackingDomainRequestStatusEnum._('disabled');

PatchCustomTrackingDomainRequestStatusEnum
_$patchCustomTrackingDomainRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$patchCustomTrackingDomainRequestStatusEnum_active;
    case 'disabled':
      return _$patchCustomTrackingDomainRequestStatusEnum_disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatchCustomTrackingDomainRequestStatusEnum>
_$patchCustomTrackingDomainRequestStatusEnumValues =
    BuiltSet<PatchCustomTrackingDomainRequestStatusEnum>(
      const <PatchCustomTrackingDomainRequestStatusEnum>[
        _$patchCustomTrackingDomainRequestStatusEnum_active,
        _$patchCustomTrackingDomainRequestStatusEnum_disabled,
      ],
    );

Serializer<PatchCustomTrackingDomainRequestStatusEnum>
_$patchCustomTrackingDomainRequestStatusEnumSerializer =
    _$PatchCustomTrackingDomainRequestStatusEnumSerializer();

class _$PatchCustomTrackingDomainRequestStatusEnumSerializer
    implements PrimitiveSerializer<PatchCustomTrackingDomainRequestStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'disabled': 'disabled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'disabled': 'disabled',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PatchCustomTrackingDomainRequestStatusEnum,
  ];
  @override
  final String wireName = 'PatchCustomTrackingDomainRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    PatchCustomTrackingDomainRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PatchCustomTrackingDomainRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PatchCustomTrackingDomainRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PatchCustomTrackingDomainRequest
    extends PatchCustomTrackingDomainRequest {
  @override
  final String? name;
  @override
  final PatchCustomTrackingDomainRequestStatusEnum? status;

  factory _$PatchCustomTrackingDomainRequest([
    void Function(PatchCustomTrackingDomainRequestBuilder)? updates,
  ]) => (PatchCustomTrackingDomainRequestBuilder()..update(updates))._build();

  _$PatchCustomTrackingDomainRequest._({this.name, this.status}) : super._();
  @override
  PatchCustomTrackingDomainRequest rebuild(
    void Function(PatchCustomTrackingDomainRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PatchCustomTrackingDomainRequestBuilder toBuilder() =>
      PatchCustomTrackingDomainRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchCustomTrackingDomainRequest &&
        name == other.name &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PatchCustomTrackingDomainRequestBuilder
    implements
        Builder<
          PatchCustomTrackingDomainRequest,
          PatchCustomTrackingDomainRequestBuilder
        > {
  _$PatchCustomTrackingDomainRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PatchCustomTrackingDomainRequestStatusEnum? _status;
  PatchCustomTrackingDomainRequestStatusEnum? get status => _$this._status;
  set status(PatchCustomTrackingDomainRequestStatusEnum? status) =>
      _$this._status = status;

  PatchCustomTrackingDomainRequestBuilder() {
    PatchCustomTrackingDomainRequest._defaults(this);
  }

  PatchCustomTrackingDomainRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchCustomTrackingDomainRequest other) {
    _$v = other as _$PatchCustomTrackingDomainRequest;
  }

  @override
  void update(void Function(PatchCustomTrackingDomainRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchCustomTrackingDomainRequest build() => _build();

  _$PatchCustomTrackingDomainRequest _build() {
    final _$result =
        _$v ?? _$PatchCustomTrackingDomainRequest._(name: name, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

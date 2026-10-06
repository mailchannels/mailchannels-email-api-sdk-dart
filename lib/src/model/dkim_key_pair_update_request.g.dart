// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dkim_key_pair_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DKIMKeyPairUpdateRequestStatusEnum
_$dKIMKeyPairUpdateRequestStatusEnum_revoked =
    const DKIMKeyPairUpdateRequestStatusEnum._('revoked');
const DKIMKeyPairUpdateRequestStatusEnum
_$dKIMKeyPairUpdateRequestStatusEnum_retired =
    const DKIMKeyPairUpdateRequestStatusEnum._('retired');
const DKIMKeyPairUpdateRequestStatusEnum
_$dKIMKeyPairUpdateRequestStatusEnum_rotated =
    const DKIMKeyPairUpdateRequestStatusEnum._('rotated');

DKIMKeyPairUpdateRequestStatusEnum _$dKIMKeyPairUpdateRequestStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'revoked':
      return _$dKIMKeyPairUpdateRequestStatusEnum_revoked;
    case 'retired':
      return _$dKIMKeyPairUpdateRequestStatusEnum_retired;
    case 'rotated':
      return _$dKIMKeyPairUpdateRequestStatusEnum_rotated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DKIMKeyPairUpdateRequestStatusEnum>
_$dKIMKeyPairUpdateRequestStatusEnumValues =
    BuiltSet<DKIMKeyPairUpdateRequestStatusEnum>(
      const <DKIMKeyPairUpdateRequestStatusEnum>[
        _$dKIMKeyPairUpdateRequestStatusEnum_revoked,
        _$dKIMKeyPairUpdateRequestStatusEnum_retired,
        _$dKIMKeyPairUpdateRequestStatusEnum_rotated,
      ],
    );

Serializer<DKIMKeyPairUpdateRequestStatusEnum>
_$dKIMKeyPairUpdateRequestStatusEnumSerializer =
    _$DKIMKeyPairUpdateRequestStatusEnumSerializer();

class _$DKIMKeyPairUpdateRequestStatusEnumSerializer
    implements PrimitiveSerializer<DKIMKeyPairUpdateRequestStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'revoked': 'revoked',
    'retired': 'retired',
    'rotated': 'rotated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'revoked': 'revoked',
    'retired': 'retired',
    'rotated': 'rotated',
  };

  @override
  final Iterable<Type> types = const <Type>[DKIMKeyPairUpdateRequestStatusEnum];
  @override
  final String wireName = 'DKIMKeyPairUpdateRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DKIMKeyPairUpdateRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DKIMKeyPairUpdateRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DKIMKeyPairUpdateRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DKIMKeyPairUpdateRequest extends DKIMKeyPairUpdateRequest {
  @override
  final DKIMKeyPairUpdateRequestStatusEnum status;

  factory _$DKIMKeyPairUpdateRequest([
    void Function(DKIMKeyPairUpdateRequestBuilder)? updates,
  ]) => (DKIMKeyPairUpdateRequestBuilder()..update(updates))._build();

  _$DKIMKeyPairUpdateRequest._({required this.status}) : super._();
  @override
  DKIMKeyPairUpdateRequest rebuild(
    void Function(DKIMKeyPairUpdateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DKIMKeyPairUpdateRequestBuilder toBuilder() =>
      DKIMKeyPairUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DKIMKeyPairUpdateRequest && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DKIMKeyPairUpdateRequestBuilder
    implements
        Builder<DKIMKeyPairUpdateRequest, DKIMKeyPairUpdateRequestBuilder> {
  _$DKIMKeyPairUpdateRequest? _$v;

  DKIMKeyPairUpdateRequestStatusEnum? _status;
  DKIMKeyPairUpdateRequestStatusEnum? get status => _$this._status;
  set status(DKIMKeyPairUpdateRequestStatusEnum? status) =>
      _$this._status = status;

  DKIMKeyPairUpdateRequestBuilder() {
    DKIMKeyPairUpdateRequest._defaults(this);
  }

  DKIMKeyPairUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DKIMKeyPairUpdateRequest other) {
    _$v = other as _$DKIMKeyPairUpdateRequest;
  }

  @override
  void update(void Function(DKIMKeyPairUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DKIMKeyPairUpdateRequest build() => _build();

  _$DKIMKeyPairUpdateRequest _build() {
    final _$result =
        _$v ??
        _$DKIMKeyPairUpdateRequest._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'DKIMKeyPairUpdateRequest',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

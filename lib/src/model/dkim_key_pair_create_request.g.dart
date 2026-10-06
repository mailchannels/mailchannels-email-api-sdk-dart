// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dkim_key_pair_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DKIMKeyPairCreateRequestAlgorithmEnum
_$dKIMKeyPairCreateRequestAlgorithmEnum_rsa =
    const DKIMKeyPairCreateRequestAlgorithmEnum._('rsa');

DKIMKeyPairCreateRequestAlgorithmEnum
_$dKIMKeyPairCreateRequestAlgorithmEnumValueOf(String name) {
  switch (name) {
    case 'rsa':
      return _$dKIMKeyPairCreateRequestAlgorithmEnum_rsa;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DKIMKeyPairCreateRequestAlgorithmEnum>
_$dKIMKeyPairCreateRequestAlgorithmEnumValues =
    BuiltSet<DKIMKeyPairCreateRequestAlgorithmEnum>(
      const <DKIMKeyPairCreateRequestAlgorithmEnum>[
        _$dKIMKeyPairCreateRequestAlgorithmEnum_rsa,
      ],
    );

Serializer<DKIMKeyPairCreateRequestAlgorithmEnum>
_$dKIMKeyPairCreateRequestAlgorithmEnumSerializer =
    _$DKIMKeyPairCreateRequestAlgorithmEnumSerializer();

class _$DKIMKeyPairCreateRequestAlgorithmEnumSerializer
    implements PrimitiveSerializer<DKIMKeyPairCreateRequestAlgorithmEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rsa': 'rsa',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'rsa': 'rsa',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DKIMKeyPairCreateRequestAlgorithmEnum,
  ];
  @override
  final String wireName = 'DKIMKeyPairCreateRequestAlgorithmEnum';

  @override
  Object serialize(
    Serializers serializers,
    DKIMKeyPairCreateRequestAlgorithmEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DKIMKeyPairCreateRequestAlgorithmEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DKIMKeyPairCreateRequestAlgorithmEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DKIMKeyPairCreateRequest extends DKIMKeyPairCreateRequest {
  @override
  final DKIMKeyPairCreateRequestAlgorithmEnum? algorithm;
  @override
  final int? keyLength;
  @override
  final String selector;

  factory _$DKIMKeyPairCreateRequest([
    void Function(DKIMKeyPairCreateRequestBuilder)? updates,
  ]) => (DKIMKeyPairCreateRequestBuilder()..update(updates))._build();

  _$DKIMKeyPairCreateRequest._({
    this.algorithm,
    this.keyLength,
    required this.selector,
  }) : super._();
  @override
  DKIMKeyPairCreateRequest rebuild(
    void Function(DKIMKeyPairCreateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DKIMKeyPairCreateRequestBuilder toBuilder() =>
      DKIMKeyPairCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DKIMKeyPairCreateRequest &&
        algorithm == other.algorithm &&
        keyLength == other.keyLength &&
        selector == other.selector;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, algorithm.hashCode);
    _$hash = $jc(_$hash, keyLength.hashCode);
    _$hash = $jc(_$hash, selector.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DKIMKeyPairCreateRequestBuilder
    implements
        Builder<DKIMKeyPairCreateRequest, DKIMKeyPairCreateRequestBuilder> {
  _$DKIMKeyPairCreateRequest? _$v;

  DKIMKeyPairCreateRequestAlgorithmEnum? _algorithm;
  DKIMKeyPairCreateRequestAlgorithmEnum? get algorithm => _$this._algorithm;
  set algorithm(DKIMKeyPairCreateRequestAlgorithmEnum? algorithm) =>
      _$this._algorithm = algorithm;

  int? _keyLength;
  int? get keyLength => _$this._keyLength;
  set keyLength(int? keyLength) => _$this._keyLength = keyLength;

  String? _selector;
  String? get selector => _$this._selector;
  set selector(String? selector) => _$this._selector = selector;

  DKIMKeyPairCreateRequestBuilder() {
    DKIMKeyPairCreateRequest._defaults(this);
  }

  DKIMKeyPairCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _algorithm = $v.algorithm;
      _keyLength = $v.keyLength;
      _selector = $v.selector;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DKIMKeyPairCreateRequest other) {
    _$v = other as _$DKIMKeyPairCreateRequest;
  }

  @override
  void update(void Function(DKIMKeyPairCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DKIMKeyPairCreateRequest build() => _build();

  _$DKIMKeyPairCreateRequest _build() {
    final _$result =
        _$v ??
        _$DKIMKeyPairCreateRequest._(
          algorithm: algorithm,
          keyLength: keyLength,
          selector: BuiltValueNullFieldError.checkNotNull(
            selector,
            r'DKIMKeyPairCreateRequest',
            'selector',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

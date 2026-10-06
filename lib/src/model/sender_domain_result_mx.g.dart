// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sender_domain_result_mx.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SenderDomainResultMxVerdictEnum _$senderDomainResultMxVerdictEnum_passed =
    const SenderDomainResultMxVerdictEnum._('passed');
const SenderDomainResultMxVerdictEnum _$senderDomainResultMxVerdictEnum_failed =
    const SenderDomainResultMxVerdictEnum._('failed');

SenderDomainResultMxVerdictEnum _$senderDomainResultMxVerdictEnumValueOf(
  String name,
) {
  switch (name) {
    case 'passed':
      return _$senderDomainResultMxVerdictEnum_passed;
    case 'failed':
      return _$senderDomainResultMxVerdictEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SenderDomainResultMxVerdictEnum>
_$senderDomainResultMxVerdictEnumValues =
    BuiltSet<SenderDomainResultMxVerdictEnum>(
      const <SenderDomainResultMxVerdictEnum>[
        _$senderDomainResultMxVerdictEnum_passed,
        _$senderDomainResultMxVerdictEnum_failed,
      ],
    );

Serializer<SenderDomainResultMxVerdictEnum>
_$senderDomainResultMxVerdictEnumSerializer =
    _$SenderDomainResultMxVerdictEnumSerializer();

class _$SenderDomainResultMxVerdictEnumSerializer
    implements PrimitiveSerializer<SenderDomainResultMxVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passed': 'passed',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passed': 'passed',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[SenderDomainResultMxVerdictEnum];
  @override
  final String wireName = 'SenderDomainResultMxVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    SenderDomainResultMxVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SenderDomainResultMxVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SenderDomainResultMxVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SenderDomainResultMx extends SenderDomainResultMx {
  @override
  final String? reason;
  @override
  final SenderDomainResultMxVerdictEnum? verdict;

  factory _$SenderDomainResultMx([
    void Function(SenderDomainResultMxBuilder)? updates,
  ]) => (SenderDomainResultMxBuilder()..update(updates))._build();

  _$SenderDomainResultMx._({this.reason, this.verdict}) : super._();
  @override
  SenderDomainResultMx rebuild(
    void Function(SenderDomainResultMxBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SenderDomainResultMxBuilder toBuilder() =>
      SenderDomainResultMxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SenderDomainResultMx &&
        reason == other.reason &&
        verdict == other.verdict;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SenderDomainResultMxBuilder
    implements Builder<SenderDomainResultMx, SenderDomainResultMxBuilder> {
  _$SenderDomainResultMx? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SenderDomainResultMxVerdictEnum? _verdict;
  SenderDomainResultMxVerdictEnum? get verdict => _$this._verdict;
  set verdict(SenderDomainResultMxVerdictEnum? verdict) =>
      _$this._verdict = verdict;

  SenderDomainResultMxBuilder() {
    SenderDomainResultMx._defaults(this);
  }

  SenderDomainResultMxBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _verdict = $v.verdict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SenderDomainResultMx other) {
    _$v = other as _$SenderDomainResultMx;
  }

  @override
  void update(void Function(SenderDomainResultMxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SenderDomainResultMx build() => _build();

  _$SenderDomainResultMx _build() {
    final _$result =
        _$v ?? _$SenderDomainResultMx._(reason: reason, verdict: verdict);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

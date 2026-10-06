// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sender_domain_result_a.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SenderDomainResultAVerdictEnum _$senderDomainResultAVerdictEnum_passed =
    const SenderDomainResultAVerdictEnum._('passed');
const SenderDomainResultAVerdictEnum _$senderDomainResultAVerdictEnum_failed =
    const SenderDomainResultAVerdictEnum._('failed');

SenderDomainResultAVerdictEnum _$senderDomainResultAVerdictEnumValueOf(
  String name,
) {
  switch (name) {
    case 'passed':
      return _$senderDomainResultAVerdictEnum_passed;
    case 'failed':
      return _$senderDomainResultAVerdictEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SenderDomainResultAVerdictEnum>
_$senderDomainResultAVerdictEnumValues =
    BuiltSet<SenderDomainResultAVerdictEnum>(
      const <SenderDomainResultAVerdictEnum>[
        _$senderDomainResultAVerdictEnum_passed,
        _$senderDomainResultAVerdictEnum_failed,
      ],
    );

Serializer<SenderDomainResultAVerdictEnum>
_$senderDomainResultAVerdictEnumSerializer =
    _$SenderDomainResultAVerdictEnumSerializer();

class _$SenderDomainResultAVerdictEnumSerializer
    implements PrimitiveSerializer<SenderDomainResultAVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passed': 'passed',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passed': 'passed',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[SenderDomainResultAVerdictEnum];
  @override
  final String wireName = 'SenderDomainResultAVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    SenderDomainResultAVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SenderDomainResultAVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SenderDomainResultAVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SenderDomainResultA extends SenderDomainResultA {
  @override
  final String? reason;
  @override
  final SenderDomainResultAVerdictEnum? verdict;

  factory _$SenderDomainResultA([
    void Function(SenderDomainResultABuilder)? updates,
  ]) => (SenderDomainResultABuilder()..update(updates))._build();

  _$SenderDomainResultA._({this.reason, this.verdict}) : super._();
  @override
  SenderDomainResultA rebuild(
    void Function(SenderDomainResultABuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SenderDomainResultABuilder toBuilder() =>
      SenderDomainResultABuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SenderDomainResultA &&
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

class SenderDomainResultABuilder
    implements Builder<SenderDomainResultA, SenderDomainResultABuilder> {
  _$SenderDomainResultA? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SenderDomainResultAVerdictEnum? _verdict;
  SenderDomainResultAVerdictEnum? get verdict => _$this._verdict;
  set verdict(SenderDomainResultAVerdictEnum? verdict) =>
      _$this._verdict = verdict;

  SenderDomainResultABuilder() {
    SenderDomainResultA._defaults(this);
  }

  SenderDomainResultABuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _verdict = $v.verdict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SenderDomainResultA other) {
    _$v = other as _$SenderDomainResultA;
  }

  @override
  void update(void Function(SenderDomainResultABuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SenderDomainResultA build() => _build();

  _$SenderDomainResultA _build() {
    final _$result =
        _$v ?? _$SenderDomainResultA._(reason: reason, verdict: verdict);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

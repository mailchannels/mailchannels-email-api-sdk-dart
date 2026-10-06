// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lockdown_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LockdownResultVerdictEnum _$lockdownResultVerdictEnum_passed =
    const LockdownResultVerdictEnum._('passed');
const LockdownResultVerdictEnum _$lockdownResultVerdictEnum_failed =
    const LockdownResultVerdictEnum._('failed');

LockdownResultVerdictEnum _$lockdownResultVerdictEnumValueOf(String name) {
  switch (name) {
    case 'passed':
      return _$lockdownResultVerdictEnum_passed;
    case 'failed':
      return _$lockdownResultVerdictEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LockdownResultVerdictEnum> _$lockdownResultVerdictEnumValues =
    BuiltSet<LockdownResultVerdictEnum>(const <LockdownResultVerdictEnum>[
      _$lockdownResultVerdictEnum_passed,
      _$lockdownResultVerdictEnum_failed,
    ]);

Serializer<LockdownResultVerdictEnum> _$lockdownResultVerdictEnumSerializer =
    _$LockdownResultVerdictEnumSerializer();

class _$LockdownResultVerdictEnumSerializer
    implements PrimitiveSerializer<LockdownResultVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passed': 'passed',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passed': 'passed',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[LockdownResultVerdictEnum];
  @override
  final String wireName = 'LockdownResultVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    LockdownResultVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LockdownResultVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LockdownResultVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LockdownResult extends LockdownResult {
  @override
  final String? reason;
  @override
  final LockdownResultVerdictEnum? verdict;

  factory _$LockdownResult([void Function(LockdownResultBuilder)? updates]) =>
      (LockdownResultBuilder()..update(updates))._build();

  _$LockdownResult._({this.reason, this.verdict}) : super._();
  @override
  LockdownResult rebuild(void Function(LockdownResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LockdownResultBuilder toBuilder() => LockdownResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LockdownResult &&
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

class LockdownResultBuilder
    implements Builder<LockdownResult, LockdownResultBuilder> {
  _$LockdownResult? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  LockdownResultVerdictEnum? _verdict;
  LockdownResultVerdictEnum? get verdict => _$this._verdict;
  set verdict(LockdownResultVerdictEnum? verdict) => _$this._verdict = verdict;

  LockdownResultBuilder() {
    LockdownResult._defaults(this);
  }

  LockdownResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _verdict = $v.verdict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LockdownResult other) {
    _$v = other as _$LockdownResult;
  }

  @override
  void update(void Function(LockdownResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LockdownResult build() => _build();

  _$LockdownResult _build() {
    final _$result =
        _$v ?? _$LockdownResult._(reason: reason, verdict: verdict);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

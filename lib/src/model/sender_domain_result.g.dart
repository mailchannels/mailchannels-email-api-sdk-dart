// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sender_domain_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SenderDomainResultVerdictEnum _$senderDomainResultVerdictEnum_passed =
    const SenderDomainResultVerdictEnum._('passed');
const SenderDomainResultVerdictEnum _$senderDomainResultVerdictEnum_failed =
    const SenderDomainResultVerdictEnum._('failed');

SenderDomainResultVerdictEnum _$senderDomainResultVerdictEnumValueOf(
  String name,
) {
  switch (name) {
    case 'passed':
      return _$senderDomainResultVerdictEnum_passed;
    case 'failed':
      return _$senderDomainResultVerdictEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SenderDomainResultVerdictEnum>
_$senderDomainResultVerdictEnumValues = BuiltSet<SenderDomainResultVerdictEnum>(
  const <SenderDomainResultVerdictEnum>[
    _$senderDomainResultVerdictEnum_passed,
    _$senderDomainResultVerdictEnum_failed,
  ],
);

Serializer<SenderDomainResultVerdictEnum>
_$senderDomainResultVerdictEnumSerializer =
    _$SenderDomainResultVerdictEnumSerializer();

class _$SenderDomainResultVerdictEnumSerializer
    implements PrimitiveSerializer<SenderDomainResultVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passed': 'passed',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passed': 'passed',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[SenderDomainResultVerdictEnum];
  @override
  final String wireName = 'SenderDomainResultVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    SenderDomainResultVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SenderDomainResultVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SenderDomainResultVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SenderDomainResult extends SenderDomainResult {
  @override
  final SenderDomainResultA? a;
  @override
  final SenderDomainResultMx? mx;
  @override
  final SenderDomainResultVerdictEnum? verdict;

  factory _$SenderDomainResult([
    void Function(SenderDomainResultBuilder)? updates,
  ]) => (SenderDomainResultBuilder()..update(updates))._build();

  _$SenderDomainResult._({this.a, this.mx, this.verdict}) : super._();
  @override
  SenderDomainResult rebuild(
    void Function(SenderDomainResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SenderDomainResultBuilder toBuilder() =>
      SenderDomainResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SenderDomainResult &&
        a == other.a &&
        mx == other.mx &&
        verdict == other.verdict;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, a.hashCode);
    _$hash = $jc(_$hash, mx.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SenderDomainResultBuilder
    implements Builder<SenderDomainResult, SenderDomainResultBuilder> {
  _$SenderDomainResult? _$v;

  SenderDomainResultABuilder? _a;
  SenderDomainResultABuilder get a =>
      _$this._a ??= SenderDomainResultABuilder();
  set a(SenderDomainResultABuilder? a) => _$this._a = a;

  SenderDomainResultMxBuilder? _mx;
  SenderDomainResultMxBuilder get mx =>
      _$this._mx ??= SenderDomainResultMxBuilder();
  set mx(SenderDomainResultMxBuilder? mx) => _$this._mx = mx;

  SenderDomainResultVerdictEnum? _verdict;
  SenderDomainResultVerdictEnum? get verdict => _$this._verdict;
  set verdict(SenderDomainResultVerdictEnum? verdict) =>
      _$this._verdict = verdict;

  SenderDomainResultBuilder() {
    SenderDomainResult._defaults(this);
  }

  SenderDomainResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _a = $v.a?.toBuilder();
      _mx = $v.mx?.toBuilder();
      _verdict = $v.verdict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SenderDomainResult other) {
    _$v = other as _$SenderDomainResult;
  }

  @override
  void update(void Function(SenderDomainResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SenderDomainResult build() => _build();

  _$SenderDomainResult _build() {
    _$SenderDomainResult _$result;
    try {
      _$result =
          _$v ??
          _$SenderDomainResult._(
            a: _a?.build(),
            mx: _mx?.build(),
            verdict: verdict,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'a';
        _a?.build();
        _$failedField = 'mx';
        _mx?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SenderDomainResult',
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

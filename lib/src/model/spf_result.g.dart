// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spf_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SpfResultVerdictEnum _$spfResultVerdictEnum_passed =
    const SpfResultVerdictEnum._('passed');
const SpfResultVerdictEnum _$spfResultVerdictEnum_failed =
    const SpfResultVerdictEnum._('failed');
const SpfResultVerdictEnum _$spfResultVerdictEnum_softFailed =
    const SpfResultVerdictEnum._('softFailed');
const SpfResultVerdictEnum _$spfResultVerdictEnum_temporaryError =
    const SpfResultVerdictEnum._('temporaryError');
const SpfResultVerdictEnum _$spfResultVerdictEnum_permanentError =
    const SpfResultVerdictEnum._('permanentError');
const SpfResultVerdictEnum _$spfResultVerdictEnum_neutral =
    const SpfResultVerdictEnum._('neutral');
const SpfResultVerdictEnum _$spfResultVerdictEnum_none =
    const SpfResultVerdictEnum._('none');
const SpfResultVerdictEnum _$spfResultVerdictEnum_unknown =
    const SpfResultVerdictEnum._('unknown');

SpfResultVerdictEnum _$spfResultVerdictEnumValueOf(String name) {
  switch (name) {
    case 'passed':
      return _$spfResultVerdictEnum_passed;
    case 'failed':
      return _$spfResultVerdictEnum_failed;
    case 'softFailed':
      return _$spfResultVerdictEnum_softFailed;
    case 'temporaryError':
      return _$spfResultVerdictEnum_temporaryError;
    case 'permanentError':
      return _$spfResultVerdictEnum_permanentError;
    case 'neutral':
      return _$spfResultVerdictEnum_neutral;
    case 'none':
      return _$spfResultVerdictEnum_none;
    case 'unknown':
      return _$spfResultVerdictEnum_unknown;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SpfResultVerdictEnum> _$spfResultVerdictEnumValues =
    BuiltSet<SpfResultVerdictEnum>(const <SpfResultVerdictEnum>[
      _$spfResultVerdictEnum_passed,
      _$spfResultVerdictEnum_failed,
      _$spfResultVerdictEnum_softFailed,
      _$spfResultVerdictEnum_temporaryError,
      _$spfResultVerdictEnum_permanentError,
      _$spfResultVerdictEnum_neutral,
      _$spfResultVerdictEnum_none,
      _$spfResultVerdictEnum_unknown,
    ]);

Serializer<SpfResultVerdictEnum> _$spfResultVerdictEnumSerializer =
    _$SpfResultVerdictEnumSerializer();

class _$SpfResultVerdictEnumSerializer
    implements PrimitiveSerializer<SpfResultVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passed': 'passed',
    'failed': 'failed',
    'softFailed': 'soft failed',
    'temporaryError': 'temporary error',
    'permanentError': 'permanent error',
    'neutral': 'neutral',
    'none': 'none',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passed': 'passed',
    'failed': 'failed',
    'soft failed': 'softFailed',
    'temporary error': 'temporaryError',
    'permanent error': 'permanentError',
    'neutral': 'neutral',
    'none': 'none',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[SpfResultVerdictEnum];
  @override
  final String wireName = 'SpfResultVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    SpfResultVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SpfResultVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SpfResultVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SpfResult extends SpfResult {
  @override
  final String? reason;
  @override
  final String? spfRecord;
  @override
  final String? spfRecordError;
  @override
  final SpfResultVerdictEnum? verdict;

  factory _$SpfResult([void Function(SpfResultBuilder)? updates]) =>
      (SpfResultBuilder()..update(updates))._build();

  _$SpfResult._({
    this.reason,
    this.spfRecord,
    this.spfRecordError,
    this.verdict,
  }) : super._();
  @override
  SpfResult rebuild(void Function(SpfResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpfResultBuilder toBuilder() => SpfResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpfResult &&
        reason == other.reason &&
        spfRecord == other.spfRecord &&
        spfRecordError == other.spfRecordError &&
        verdict == other.verdict;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, spfRecord.hashCode);
    _$hash = $jc(_$hash, spfRecordError.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpfResultBuilder implements Builder<SpfResult, SpfResultBuilder> {
  _$SpfResult? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _spfRecord;
  String? get spfRecord => _$this._spfRecord;
  set spfRecord(String? spfRecord) => _$this._spfRecord = spfRecord;

  String? _spfRecordError;
  String? get spfRecordError => _$this._spfRecordError;
  set spfRecordError(String? spfRecordError) =>
      _$this._spfRecordError = spfRecordError;

  SpfResultVerdictEnum? _verdict;
  SpfResultVerdictEnum? get verdict => _$this._verdict;
  set verdict(SpfResultVerdictEnum? verdict) => _$this._verdict = verdict;

  SpfResultBuilder() {
    SpfResult._defaults(this);
  }

  SpfResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _spfRecord = $v.spfRecord;
      _spfRecordError = $v.spfRecordError;
      _verdict = $v.verdict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpfResult other) {
    _$v = other as _$SpfResult;
  }

  @override
  void update(void Function(SpfResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpfResult build() => _build();

  _$SpfResult _build() {
    final _$result =
        _$v ??
        _$SpfResult._(
          reason: reason,
          spfRecord: spfRecord,
          spfRecordError: spfRecordError,
          verdict: verdict,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dkim_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DkimResultVerdictEnum _$dkimResultVerdictEnum_passed =
    const DkimResultVerdictEnum._('passed');
const DkimResultVerdictEnum _$dkimResultVerdictEnum_failed =
    const DkimResultVerdictEnum._('failed');

DkimResultVerdictEnum _$dkimResultVerdictEnumValueOf(String name) {
  switch (name) {
    case 'passed':
      return _$dkimResultVerdictEnum_passed;
    case 'failed':
      return _$dkimResultVerdictEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DkimResultVerdictEnum> _$dkimResultVerdictEnumValues =
    BuiltSet<DkimResultVerdictEnum>(const <DkimResultVerdictEnum>[
      _$dkimResultVerdictEnum_passed,
      _$dkimResultVerdictEnum_failed,
    ]);

Serializer<DkimResultVerdictEnum> _$dkimResultVerdictEnumSerializer =
    _$DkimResultVerdictEnumSerializer();

class _$DkimResultVerdictEnumSerializer
    implements PrimitiveSerializer<DkimResultVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passed': 'passed',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passed': 'passed',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[DkimResultVerdictEnum];
  @override
  final String wireName = 'DkimResultVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    DkimResultVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DkimResultVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DkimResultVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DkimResult extends DkimResult {
  @override
  final String? dkimDomain;
  @override
  final String? dkimKeyStatus;
  @override
  final String? dkimSelector;
  @override
  final String? reason;
  @override
  final DkimResultVerdictEnum? verdict;

  factory _$DkimResult([void Function(DkimResultBuilder)? updates]) =>
      (DkimResultBuilder()..update(updates))._build();

  _$DkimResult._({
    this.dkimDomain,
    this.dkimKeyStatus,
    this.dkimSelector,
    this.reason,
    this.verdict,
  }) : super._();
  @override
  DkimResult rebuild(void Function(DkimResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DkimResultBuilder toBuilder() => DkimResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DkimResult &&
        dkimDomain == other.dkimDomain &&
        dkimKeyStatus == other.dkimKeyStatus &&
        dkimSelector == other.dkimSelector &&
        reason == other.reason &&
        verdict == other.verdict;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dkimDomain.hashCode);
    _$hash = $jc(_$hash, dkimKeyStatus.hashCode);
    _$hash = $jc(_$hash, dkimSelector.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DkimResultBuilder implements Builder<DkimResult, DkimResultBuilder> {
  _$DkimResult? _$v;

  String? _dkimDomain;
  String? get dkimDomain => _$this._dkimDomain;
  set dkimDomain(String? dkimDomain) => _$this._dkimDomain = dkimDomain;

  String? _dkimKeyStatus;
  String? get dkimKeyStatus => _$this._dkimKeyStatus;
  set dkimKeyStatus(String? dkimKeyStatus) =>
      _$this._dkimKeyStatus = dkimKeyStatus;

  String? _dkimSelector;
  String? get dkimSelector => _$this._dkimSelector;
  set dkimSelector(String? dkimSelector) => _$this._dkimSelector = dkimSelector;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DkimResultVerdictEnum? _verdict;
  DkimResultVerdictEnum? get verdict => _$this._verdict;
  set verdict(DkimResultVerdictEnum? verdict) => _$this._verdict = verdict;

  DkimResultBuilder() {
    DkimResult._defaults(this);
  }

  DkimResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dkimDomain = $v.dkimDomain;
      _dkimKeyStatus = $v.dkimKeyStatus;
      _dkimSelector = $v.dkimSelector;
      _reason = $v.reason;
      _verdict = $v.verdict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DkimResult other) {
    _$v = other as _$DkimResult;
  }

  @override
  void update(void Function(DkimResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DkimResult build() => _build();

  _$DkimResult _build() {
    final _$result =
        _$v ??
        _$DkimResult._(
          dkimDomain: dkimDomain,
          dkimKeyStatus: dkimKeyStatus,
          dkimSelector: dkimSelector,
          reason: reason,
          verdict: verdict,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

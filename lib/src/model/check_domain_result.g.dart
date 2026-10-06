// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_domain_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckDomainResult extends CheckDomainResult {
  @override
  final CheckResults? checkResults;
  @override
  final BuiltList<String>? references;

  factory _$CheckDomainResult([
    void Function(CheckDomainResultBuilder)? updates,
  ]) => (CheckDomainResultBuilder()..update(updates))._build();

  _$CheckDomainResult._({this.checkResults, this.references}) : super._();
  @override
  CheckDomainResult rebuild(void Function(CheckDomainResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckDomainResultBuilder toBuilder() =>
      CheckDomainResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckDomainResult &&
        checkResults == other.checkResults &&
        references == other.references;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checkResults.hashCode);
    _$hash = $jc(_$hash, references.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CheckDomainResultBuilder
    implements Builder<CheckDomainResult, CheckDomainResultBuilder> {
  _$CheckDomainResult? _$v;

  CheckResultsBuilder? _checkResults;
  CheckResultsBuilder get checkResults =>
      _$this._checkResults ??= CheckResultsBuilder();
  set checkResults(CheckResultsBuilder? checkResults) =>
      _$this._checkResults = checkResults;

  ListBuilder<String>? _references;
  ListBuilder<String> get references =>
      _$this._references ??= ListBuilder<String>();
  set references(ListBuilder<String>? references) =>
      _$this._references = references;

  CheckDomainResultBuilder() {
    CheckDomainResult._defaults(this);
  }

  CheckDomainResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checkResults = $v.checkResults?.toBuilder();
      _references = $v.references?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckDomainResult other) {
    _$v = other as _$CheckDomainResult;
  }

  @override
  void update(void Function(CheckDomainResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckDomainResult build() => _build();

  _$CheckDomainResult _build() {
    _$CheckDomainResult _$result;
    try {
      _$result =
          _$v ??
          _$CheckDomainResult._(
            checkResults: _checkResults?.build(),
            references: _references?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checkResults';
        _checkResults?.build();
        _$failedField = 'references';
        _references?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CheckDomainResult',
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

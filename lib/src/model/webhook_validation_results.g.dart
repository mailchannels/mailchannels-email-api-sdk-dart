// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_validation_results.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookValidationResults extends WebhookValidationResults {
  @override
  final bool allPassed;
  @override
  final BuiltList<WebhookValidationResult> results;

  factory _$WebhookValidationResults([
    void Function(WebhookValidationResultsBuilder)? updates,
  ]) => (WebhookValidationResultsBuilder()..update(updates))._build();

  _$WebhookValidationResults._({required this.allPassed, required this.results})
    : super._();
  @override
  WebhookValidationResults rebuild(
    void Function(WebhookValidationResultsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WebhookValidationResultsBuilder toBuilder() =>
      WebhookValidationResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookValidationResults &&
        allPassed == other.allPassed &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allPassed.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WebhookValidationResultsBuilder
    implements
        Builder<WebhookValidationResults, WebhookValidationResultsBuilder> {
  _$WebhookValidationResults? _$v;

  bool? _allPassed;
  bool? get allPassed => _$this._allPassed;
  set allPassed(bool? allPassed) => _$this._allPassed = allPassed;

  ListBuilder<WebhookValidationResult>? _results;
  ListBuilder<WebhookValidationResult> get results =>
      _$this._results ??= ListBuilder<WebhookValidationResult>();
  set results(ListBuilder<WebhookValidationResult>? results) =>
      _$this._results = results;

  WebhookValidationResultsBuilder() {
    WebhookValidationResults._defaults(this);
  }

  WebhookValidationResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allPassed = $v.allPassed;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookValidationResults other) {
    _$v = other as _$WebhookValidationResults;
  }

  @override
  void update(void Function(WebhookValidationResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookValidationResults build() => _build();

  _$WebhookValidationResults _build() {
    _$WebhookValidationResults _$result;
    try {
      _$result =
          _$v ??
          _$WebhookValidationResults._(
            allPassed: BuiltValueNullFieldError.checkNotNull(
              allPassed,
              r'WebhookValidationResults',
              'allPassed',
            ),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WebhookValidationResults',
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

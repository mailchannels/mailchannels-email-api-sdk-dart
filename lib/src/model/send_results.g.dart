// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_results.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendResults extends SendResults {
  @override
  final String? requestId;
  @override
  final BuiltList<SendResult>? results;

  factory _$SendResults([void Function(SendResultsBuilder)? updates]) =>
      (SendResultsBuilder()..update(updates))._build();

  _$SendResults._({this.requestId, this.results}) : super._();
  @override
  SendResults rebuild(void Function(SendResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendResultsBuilder toBuilder() => SendResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendResults &&
        requestId == other.requestId &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SendResultsBuilder implements Builder<SendResults, SendResultsBuilder> {
  _$SendResults? _$v;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  ListBuilder<SendResult>? _results;
  ListBuilder<SendResult> get results =>
      _$this._results ??= ListBuilder<SendResult>();
  set results(ListBuilder<SendResult>? results) => _$this._results = results;

  SendResultsBuilder() {
    SendResults._defaults(this);
  }

  SendResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendResults other) {
    _$v = other as _$SendResults;
  }

  @override
  void update(void Function(SendResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendResults build() => _build();

  _$SendResults _build() {
    _$SendResults _$result;
    try {
      _$result =
          _$v ??
          _$SendResults._(requestId: requestId, results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SendResults',
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

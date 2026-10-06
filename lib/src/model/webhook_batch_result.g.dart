// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_batch_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookBatchResult extends WebhookBatchResult {
  @override
  final BuiltList<WebhookBatch> webhookBatches;

  factory _$WebhookBatchResult([
    void Function(WebhookBatchResultBuilder)? updates,
  ]) => (WebhookBatchResultBuilder()..update(updates))._build();

  _$WebhookBatchResult._({required this.webhookBatches}) : super._();
  @override
  WebhookBatchResult rebuild(
    void Function(WebhookBatchResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WebhookBatchResultBuilder toBuilder() =>
      WebhookBatchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookBatchResult &&
        webhookBatches == other.webhookBatches;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, webhookBatches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WebhookBatchResultBuilder
    implements Builder<WebhookBatchResult, WebhookBatchResultBuilder> {
  _$WebhookBatchResult? _$v;

  ListBuilder<WebhookBatch>? _webhookBatches;
  ListBuilder<WebhookBatch> get webhookBatches =>
      _$this._webhookBatches ??= ListBuilder<WebhookBatch>();
  set webhookBatches(ListBuilder<WebhookBatch>? webhookBatches) =>
      _$this._webhookBatches = webhookBatches;

  WebhookBatchResultBuilder() {
    WebhookBatchResult._defaults(this);
  }

  WebhookBatchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _webhookBatches = $v.webhookBatches.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookBatchResult other) {
    _$v = other as _$WebhookBatchResult;
  }

  @override
  void update(void Function(WebhookBatchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookBatchResult build() => _build();

  _$WebhookBatchResult _build() {
    _$WebhookBatchResult _$result;
    try {
      _$result =
          _$v ?? _$WebhookBatchResult._(webhookBatches: webhookBatches.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'webhookBatches';
        webhookBatches.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WebhookBatchResult',
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

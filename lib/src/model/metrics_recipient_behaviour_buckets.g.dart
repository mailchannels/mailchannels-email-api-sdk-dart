// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_recipient_behaviour_buckets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsRecipientBehaviourBuckets
    extends MetricsRecipientBehaviourBuckets {
  @override
  final BuiltList<MetricsBucket> unsubscribeDelivered;
  @override
  final BuiltList<MetricsBucket> unsubscribed;

  factory _$MetricsRecipientBehaviourBuckets([
    void Function(MetricsRecipientBehaviourBucketsBuilder)? updates,
  ]) => (MetricsRecipientBehaviourBucketsBuilder()..update(updates))._build();

  _$MetricsRecipientBehaviourBuckets._({
    required this.unsubscribeDelivered,
    required this.unsubscribed,
  }) : super._();
  @override
  MetricsRecipientBehaviourBuckets rebuild(
    void Function(MetricsRecipientBehaviourBucketsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MetricsRecipientBehaviourBucketsBuilder toBuilder() =>
      MetricsRecipientBehaviourBucketsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsRecipientBehaviourBuckets &&
        unsubscribeDelivered == other.unsubscribeDelivered &&
        unsubscribed == other.unsubscribed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsubscribeDelivered.hashCode);
    _$hash = $jc(_$hash, unsubscribed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsRecipientBehaviourBucketsBuilder
    implements
        Builder<
          MetricsRecipientBehaviourBuckets,
          MetricsRecipientBehaviourBucketsBuilder
        > {
  _$MetricsRecipientBehaviourBuckets? _$v;

  ListBuilder<MetricsBucket>? _unsubscribeDelivered;
  ListBuilder<MetricsBucket> get unsubscribeDelivered =>
      _$this._unsubscribeDelivered ??= ListBuilder<MetricsBucket>();
  set unsubscribeDelivered(ListBuilder<MetricsBucket>? unsubscribeDelivered) =>
      _$this._unsubscribeDelivered = unsubscribeDelivered;

  ListBuilder<MetricsBucket>? _unsubscribed;
  ListBuilder<MetricsBucket> get unsubscribed =>
      _$this._unsubscribed ??= ListBuilder<MetricsBucket>();
  set unsubscribed(ListBuilder<MetricsBucket>? unsubscribed) =>
      _$this._unsubscribed = unsubscribed;

  MetricsRecipientBehaviourBucketsBuilder() {
    MetricsRecipientBehaviourBuckets._defaults(this);
  }

  MetricsRecipientBehaviourBucketsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsubscribeDelivered = $v.unsubscribeDelivered.toBuilder();
      _unsubscribed = $v.unsubscribed.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsRecipientBehaviourBuckets other) {
    _$v = other as _$MetricsRecipientBehaviourBuckets;
  }

  @override
  void update(void Function(MetricsRecipientBehaviourBucketsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsRecipientBehaviourBuckets build() => _build();

  _$MetricsRecipientBehaviourBuckets _build() {
    _$MetricsRecipientBehaviourBuckets _$result;
    try {
      _$result =
          _$v ??
          _$MetricsRecipientBehaviourBuckets._(
            unsubscribeDelivered: unsubscribeDelivered.build(),
            unsubscribed: unsubscribed.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unsubscribeDelivered';
        unsubscribeDelivered.build();
        _$failedField = 'unsubscribed';
        unsubscribed.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricsRecipientBehaviourBuckets',
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

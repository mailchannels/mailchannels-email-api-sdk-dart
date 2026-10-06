// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_performance_buckets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsPerformanceBuckets extends MetricsPerformanceBuckets {
  @override
  final BuiltList<MetricsBucket> bounced;
  @override
  final BuiltList<MetricsBucket> complained;
  @override
  final BuiltList<MetricsBucket> delivered;
  @override
  final BuiltList<MetricsBucket> processed;

  factory _$MetricsPerformanceBuckets([
    void Function(MetricsPerformanceBucketsBuilder)? updates,
  ]) => (MetricsPerformanceBucketsBuilder()..update(updates))._build();

  _$MetricsPerformanceBuckets._({
    required this.bounced,
    required this.complained,
    required this.delivered,
    required this.processed,
  }) : super._();
  @override
  MetricsPerformanceBuckets rebuild(
    void Function(MetricsPerformanceBucketsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MetricsPerformanceBucketsBuilder toBuilder() =>
      MetricsPerformanceBucketsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsPerformanceBuckets &&
        bounced == other.bounced &&
        complained == other.complained &&
        delivered == other.delivered &&
        processed == other.processed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bounced.hashCode);
    _$hash = $jc(_$hash, complained.hashCode);
    _$hash = $jc(_$hash, delivered.hashCode);
    _$hash = $jc(_$hash, processed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsPerformanceBucketsBuilder
    implements
        Builder<MetricsPerformanceBuckets, MetricsPerformanceBucketsBuilder> {
  _$MetricsPerformanceBuckets? _$v;

  ListBuilder<MetricsBucket>? _bounced;
  ListBuilder<MetricsBucket> get bounced =>
      _$this._bounced ??= ListBuilder<MetricsBucket>();
  set bounced(ListBuilder<MetricsBucket>? bounced) => _$this._bounced = bounced;

  ListBuilder<MetricsBucket>? _complained;
  ListBuilder<MetricsBucket> get complained =>
      _$this._complained ??= ListBuilder<MetricsBucket>();
  set complained(ListBuilder<MetricsBucket>? complained) =>
      _$this._complained = complained;

  ListBuilder<MetricsBucket>? _delivered;
  ListBuilder<MetricsBucket> get delivered =>
      _$this._delivered ??= ListBuilder<MetricsBucket>();
  set delivered(ListBuilder<MetricsBucket>? delivered) =>
      _$this._delivered = delivered;

  ListBuilder<MetricsBucket>? _processed;
  ListBuilder<MetricsBucket> get processed =>
      _$this._processed ??= ListBuilder<MetricsBucket>();
  set processed(ListBuilder<MetricsBucket>? processed) =>
      _$this._processed = processed;

  MetricsPerformanceBucketsBuilder() {
    MetricsPerformanceBuckets._defaults(this);
  }

  MetricsPerformanceBucketsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bounced = $v.bounced.toBuilder();
      _complained = $v.complained.toBuilder();
      _delivered = $v.delivered.toBuilder();
      _processed = $v.processed.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsPerformanceBuckets other) {
    _$v = other as _$MetricsPerformanceBuckets;
  }

  @override
  void update(void Function(MetricsPerformanceBucketsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsPerformanceBuckets build() => _build();

  _$MetricsPerformanceBuckets _build() {
    _$MetricsPerformanceBuckets _$result;
    try {
      _$result =
          _$v ??
          _$MetricsPerformanceBuckets._(
            bounced: bounced.build(),
            complained: complained.build(),
            delivered: delivered.build(),
            processed: processed.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bounced';
        bounced.build();
        _$failedField = 'complained';
        complained.build();
        _$failedField = 'delivered';
        delivered.build();
        _$failedField = 'processed';
        processed.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricsPerformanceBuckets',
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

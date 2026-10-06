// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_volume_buckets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsVolumeBuckets extends MetricsVolumeBuckets {
  @override
  final BuiltList<MetricsBucket> delivered;
  @override
  final BuiltList<MetricsBucket> dropped;
  @override
  final BuiltList<MetricsBucket> processed;

  factory _$MetricsVolumeBuckets([
    void Function(MetricsVolumeBucketsBuilder)? updates,
  ]) => (MetricsVolumeBucketsBuilder()..update(updates))._build();

  _$MetricsVolumeBuckets._({
    required this.delivered,
    required this.dropped,
    required this.processed,
  }) : super._();
  @override
  MetricsVolumeBuckets rebuild(
    void Function(MetricsVolumeBucketsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MetricsVolumeBucketsBuilder toBuilder() =>
      MetricsVolumeBucketsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsVolumeBuckets &&
        delivered == other.delivered &&
        dropped == other.dropped &&
        processed == other.processed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, delivered.hashCode);
    _$hash = $jc(_$hash, dropped.hashCode);
    _$hash = $jc(_$hash, processed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsVolumeBucketsBuilder
    implements Builder<MetricsVolumeBuckets, MetricsVolumeBucketsBuilder> {
  _$MetricsVolumeBuckets? _$v;

  ListBuilder<MetricsBucket>? _delivered;
  ListBuilder<MetricsBucket> get delivered =>
      _$this._delivered ??= ListBuilder<MetricsBucket>();
  set delivered(ListBuilder<MetricsBucket>? delivered) =>
      _$this._delivered = delivered;

  ListBuilder<MetricsBucket>? _dropped;
  ListBuilder<MetricsBucket> get dropped =>
      _$this._dropped ??= ListBuilder<MetricsBucket>();
  set dropped(ListBuilder<MetricsBucket>? dropped) => _$this._dropped = dropped;

  ListBuilder<MetricsBucket>? _processed;
  ListBuilder<MetricsBucket> get processed =>
      _$this._processed ??= ListBuilder<MetricsBucket>();
  set processed(ListBuilder<MetricsBucket>? processed) =>
      _$this._processed = processed;

  MetricsVolumeBucketsBuilder() {
    MetricsVolumeBuckets._defaults(this);
  }

  MetricsVolumeBucketsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _delivered = $v.delivered.toBuilder();
      _dropped = $v.dropped.toBuilder();
      _processed = $v.processed.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsVolumeBuckets other) {
    _$v = other as _$MetricsVolumeBuckets;
  }

  @override
  void update(void Function(MetricsVolumeBucketsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsVolumeBuckets build() => _build();

  _$MetricsVolumeBuckets _build() {
    _$MetricsVolumeBuckets _$result;
    try {
      _$result =
          _$v ??
          _$MetricsVolumeBuckets._(
            delivered: delivered.build(),
            dropped: dropped.build(),
            processed: processed.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delivered';
        delivered.build();
        _$failedField = 'dropped';
        dropped.build();
        _$failedField = 'processed';
        processed.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricsVolumeBuckets',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_performance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsPerformance extends MetricsPerformance {
  @override
  final int bounced;
  @override
  final MetricsPerformanceBuckets buckets;
  @override
  final int complained;
  @override
  final int delivered;
  @override
  final DateTime? endTime;
  @override
  final int processed;
  @override
  final DateTime? startTime;

  factory _$MetricsPerformance([
    void Function(MetricsPerformanceBuilder)? updates,
  ]) => (MetricsPerformanceBuilder()..update(updates))._build();

  _$MetricsPerformance._({
    required this.bounced,
    required this.buckets,
    required this.complained,
    required this.delivered,
    this.endTime,
    required this.processed,
    this.startTime,
  }) : super._();
  @override
  MetricsPerformance rebuild(
    void Function(MetricsPerformanceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MetricsPerformanceBuilder toBuilder() =>
      MetricsPerformanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsPerformance &&
        bounced == other.bounced &&
        buckets == other.buckets &&
        complained == other.complained &&
        delivered == other.delivered &&
        endTime == other.endTime &&
        processed == other.processed &&
        startTime == other.startTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bounced.hashCode);
    _$hash = $jc(_$hash, buckets.hashCode);
    _$hash = $jc(_$hash, complained.hashCode);
    _$hash = $jc(_$hash, delivered.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, processed.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsPerformanceBuilder
    implements Builder<MetricsPerformance, MetricsPerformanceBuilder> {
  _$MetricsPerformance? _$v;

  int? _bounced;
  int? get bounced => _$this._bounced;
  set bounced(int? bounced) => _$this._bounced = bounced;

  MetricsPerformanceBucketsBuilder? _buckets;
  MetricsPerformanceBucketsBuilder get buckets =>
      _$this._buckets ??= MetricsPerformanceBucketsBuilder();
  set buckets(MetricsPerformanceBucketsBuilder? buckets) =>
      _$this._buckets = buckets;

  int? _complained;
  int? get complained => _$this._complained;
  set complained(int? complained) => _$this._complained = complained;

  int? _delivered;
  int? get delivered => _$this._delivered;
  set delivered(int? delivered) => _$this._delivered = delivered;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  int? _processed;
  int? get processed => _$this._processed;
  set processed(int? processed) => _$this._processed = processed;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  MetricsPerformanceBuilder() {
    MetricsPerformance._defaults(this);
  }

  MetricsPerformanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bounced = $v.bounced;
      _buckets = $v.buckets.toBuilder();
      _complained = $v.complained;
      _delivered = $v.delivered;
      _endTime = $v.endTime;
      _processed = $v.processed;
      _startTime = $v.startTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsPerformance other) {
    _$v = other as _$MetricsPerformance;
  }

  @override
  void update(void Function(MetricsPerformanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsPerformance build() => _build();

  _$MetricsPerformance _build() {
    _$MetricsPerformance _$result;
    try {
      _$result =
          _$v ??
          _$MetricsPerformance._(
            bounced: BuiltValueNullFieldError.checkNotNull(
              bounced,
              r'MetricsPerformance',
              'bounced',
            ),
            buckets: buckets.build(),
            complained: BuiltValueNullFieldError.checkNotNull(
              complained,
              r'MetricsPerformance',
              'complained',
            ),
            delivered: BuiltValueNullFieldError.checkNotNull(
              delivered,
              r'MetricsPerformance',
              'delivered',
            ),
            endTime: endTime,
            processed: BuiltValueNullFieldError.checkNotNull(
              processed,
              r'MetricsPerformance',
              'processed',
            ),
            startTime: startTime,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'buckets';
        buckets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricsPerformance',
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

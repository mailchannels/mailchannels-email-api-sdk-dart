// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_volume.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsVolume extends MetricsVolume {
  @override
  final MetricsVolumeBuckets buckets;
  @override
  final int delivered;
  @override
  final int dropped;
  @override
  final DateTime? endTime;
  @override
  final int processed;
  @override
  final DateTime? startTime;

  factory _$MetricsVolume([void Function(MetricsVolumeBuilder)? updates]) =>
      (MetricsVolumeBuilder()..update(updates))._build();

  _$MetricsVolume._({
    required this.buckets,
    required this.delivered,
    required this.dropped,
    this.endTime,
    required this.processed,
    this.startTime,
  }) : super._();
  @override
  MetricsVolume rebuild(void Function(MetricsVolumeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricsVolumeBuilder toBuilder() => MetricsVolumeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsVolume &&
        buckets == other.buckets &&
        delivered == other.delivered &&
        dropped == other.dropped &&
        endTime == other.endTime &&
        processed == other.processed &&
        startTime == other.startTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buckets.hashCode);
    _$hash = $jc(_$hash, delivered.hashCode);
    _$hash = $jc(_$hash, dropped.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, processed.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsVolumeBuilder
    implements Builder<MetricsVolume, MetricsVolumeBuilder> {
  _$MetricsVolume? _$v;

  MetricsVolumeBucketsBuilder? _buckets;
  MetricsVolumeBucketsBuilder get buckets =>
      _$this._buckets ??= MetricsVolumeBucketsBuilder();
  set buckets(MetricsVolumeBucketsBuilder? buckets) =>
      _$this._buckets = buckets;

  int? _delivered;
  int? get delivered => _$this._delivered;
  set delivered(int? delivered) => _$this._delivered = delivered;

  int? _dropped;
  int? get dropped => _$this._dropped;
  set dropped(int? dropped) => _$this._dropped = dropped;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  int? _processed;
  int? get processed => _$this._processed;
  set processed(int? processed) => _$this._processed = processed;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  MetricsVolumeBuilder() {
    MetricsVolume._defaults(this);
  }

  MetricsVolumeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buckets = $v.buckets.toBuilder();
      _delivered = $v.delivered;
      _dropped = $v.dropped;
      _endTime = $v.endTime;
      _processed = $v.processed;
      _startTime = $v.startTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsVolume other) {
    _$v = other as _$MetricsVolume;
  }

  @override
  void update(void Function(MetricsVolumeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsVolume build() => _build();

  _$MetricsVolume _build() {
    _$MetricsVolume _$result;
    try {
      _$result =
          _$v ??
          _$MetricsVolume._(
            buckets: buckets.build(),
            delivered: BuiltValueNullFieldError.checkNotNull(
              delivered,
              r'MetricsVolume',
              'delivered',
            ),
            dropped: BuiltValueNullFieldError.checkNotNull(
              dropped,
              r'MetricsVolume',
              'dropped',
            ),
            endTime: endTime,
            processed: BuiltValueNullFieldError.checkNotNull(
              processed,
              r'MetricsVolume',
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
          r'MetricsVolume',
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

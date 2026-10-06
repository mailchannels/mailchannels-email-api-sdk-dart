// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_bucket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsBucket extends MetricsBucket {
  @override
  final int count;
  @override
  final DateTime periodStart;

  factory _$MetricsBucket([void Function(MetricsBucketBuilder)? updates]) =>
      (MetricsBucketBuilder()..update(updates))._build();

  _$MetricsBucket._({required this.count, required this.periodStart})
    : super._();
  @override
  MetricsBucket rebuild(void Function(MetricsBucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricsBucketBuilder toBuilder() => MetricsBucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsBucket &&
        count == other.count &&
        periodStart == other.periodStart;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, periodStart.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsBucketBuilder
    implements Builder<MetricsBucket, MetricsBucketBuilder> {
  _$MetricsBucket? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  DateTime? _periodStart;
  DateTime? get periodStart => _$this._periodStart;
  set periodStart(DateTime? periodStart) => _$this._periodStart = periodStart;

  MetricsBucketBuilder() {
    MetricsBucket._defaults(this);
  }

  MetricsBucketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _periodStart = $v.periodStart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsBucket other) {
    _$v = other as _$MetricsBucket;
  }

  @override
  void update(void Function(MetricsBucketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsBucket build() => _build();

  _$MetricsBucket _build() {
    final _$result =
        _$v ??
        _$MetricsBucket._(
          count: BuiltValueNullFieldError.checkNotNull(
            count,
            r'MetricsBucket',
            'count',
          ),
          periodStart: BuiltValueNullFieldError.checkNotNull(
            periodStart,
            r'MetricsBucket',
            'periodStart',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_engagement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsEngagement extends MetricsEngagement {
  @override
  final MetricsEngagementBuckets buckets;
  @override
  final int click;
  @override
  final int clickTrackingDelivered;
  @override
  final DateTime? endTime;
  @override
  final int open;
  @override
  final int openTrackingDelivered;
  @override
  final DateTime? startTime;
  @override
  final int? uniqueClick;
  @override
  final int? uniqueClickTrackingDelivered;
  @override
  final int? uniqueOpen;
  @override
  final int? uniqueOpenTrackingDelivered;

  factory _$MetricsEngagement([
    void Function(MetricsEngagementBuilder)? updates,
  ]) => (MetricsEngagementBuilder()..update(updates))._build();

  _$MetricsEngagement._({
    required this.buckets,
    required this.click,
    required this.clickTrackingDelivered,
    this.endTime,
    required this.open,
    required this.openTrackingDelivered,
    this.startTime,
    this.uniqueClick,
    this.uniqueClickTrackingDelivered,
    this.uniqueOpen,
    this.uniqueOpenTrackingDelivered,
  }) : super._();
  @override
  MetricsEngagement rebuild(void Function(MetricsEngagementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricsEngagementBuilder toBuilder() =>
      MetricsEngagementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsEngagement &&
        buckets == other.buckets &&
        click == other.click &&
        clickTrackingDelivered == other.clickTrackingDelivered &&
        endTime == other.endTime &&
        open == other.open &&
        openTrackingDelivered == other.openTrackingDelivered &&
        startTime == other.startTime &&
        uniqueClick == other.uniqueClick &&
        uniqueClickTrackingDelivered == other.uniqueClickTrackingDelivered &&
        uniqueOpen == other.uniqueOpen &&
        uniqueOpenTrackingDelivered == other.uniqueOpenTrackingDelivered;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buckets.hashCode);
    _$hash = $jc(_$hash, click.hashCode);
    _$hash = $jc(_$hash, clickTrackingDelivered.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, open.hashCode);
    _$hash = $jc(_$hash, openTrackingDelivered.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, uniqueClick.hashCode);
    _$hash = $jc(_$hash, uniqueClickTrackingDelivered.hashCode);
    _$hash = $jc(_$hash, uniqueOpen.hashCode);
    _$hash = $jc(_$hash, uniqueOpenTrackingDelivered.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsEngagementBuilder
    implements Builder<MetricsEngagement, MetricsEngagementBuilder> {
  _$MetricsEngagement? _$v;

  MetricsEngagementBucketsBuilder? _buckets;
  MetricsEngagementBucketsBuilder get buckets =>
      _$this._buckets ??= MetricsEngagementBucketsBuilder();
  set buckets(MetricsEngagementBucketsBuilder? buckets) =>
      _$this._buckets = buckets;

  int? _click;
  int? get click => _$this._click;
  set click(int? click) => _$this._click = click;

  int? _clickTrackingDelivered;
  int? get clickTrackingDelivered => _$this._clickTrackingDelivered;
  set clickTrackingDelivered(int? clickTrackingDelivered) =>
      _$this._clickTrackingDelivered = clickTrackingDelivered;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  int? _open;
  int? get open => _$this._open;
  set open(int? open) => _$this._open = open;

  int? _openTrackingDelivered;
  int? get openTrackingDelivered => _$this._openTrackingDelivered;
  set openTrackingDelivered(int? openTrackingDelivered) =>
      _$this._openTrackingDelivered = openTrackingDelivered;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  int? _uniqueClick;
  int? get uniqueClick => _$this._uniqueClick;
  set uniqueClick(int? uniqueClick) => _$this._uniqueClick = uniqueClick;

  int? _uniqueClickTrackingDelivered;
  int? get uniqueClickTrackingDelivered => _$this._uniqueClickTrackingDelivered;
  set uniqueClickTrackingDelivered(int? uniqueClickTrackingDelivered) =>
      _$this._uniqueClickTrackingDelivered = uniqueClickTrackingDelivered;

  int? _uniqueOpen;
  int? get uniqueOpen => _$this._uniqueOpen;
  set uniqueOpen(int? uniqueOpen) => _$this._uniqueOpen = uniqueOpen;

  int? _uniqueOpenTrackingDelivered;
  int? get uniqueOpenTrackingDelivered => _$this._uniqueOpenTrackingDelivered;
  set uniqueOpenTrackingDelivered(int? uniqueOpenTrackingDelivered) =>
      _$this._uniqueOpenTrackingDelivered = uniqueOpenTrackingDelivered;

  MetricsEngagementBuilder() {
    MetricsEngagement._defaults(this);
  }

  MetricsEngagementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buckets = $v.buckets.toBuilder();
      _click = $v.click;
      _clickTrackingDelivered = $v.clickTrackingDelivered;
      _endTime = $v.endTime;
      _open = $v.open;
      _openTrackingDelivered = $v.openTrackingDelivered;
      _startTime = $v.startTime;
      _uniqueClick = $v.uniqueClick;
      _uniqueClickTrackingDelivered = $v.uniqueClickTrackingDelivered;
      _uniqueOpen = $v.uniqueOpen;
      _uniqueOpenTrackingDelivered = $v.uniqueOpenTrackingDelivered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsEngagement other) {
    _$v = other as _$MetricsEngagement;
  }

  @override
  void update(void Function(MetricsEngagementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsEngagement build() => _build();

  _$MetricsEngagement _build() {
    _$MetricsEngagement _$result;
    try {
      _$result =
          _$v ??
          _$MetricsEngagement._(
            buckets: buckets.build(),
            click: BuiltValueNullFieldError.checkNotNull(
              click,
              r'MetricsEngagement',
              'click',
            ),
            clickTrackingDelivered: BuiltValueNullFieldError.checkNotNull(
              clickTrackingDelivered,
              r'MetricsEngagement',
              'clickTrackingDelivered',
            ),
            endTime: endTime,
            open: BuiltValueNullFieldError.checkNotNull(
              open,
              r'MetricsEngagement',
              'open',
            ),
            openTrackingDelivered: BuiltValueNullFieldError.checkNotNull(
              openTrackingDelivered,
              r'MetricsEngagement',
              'openTrackingDelivered',
            ),
            startTime: startTime,
            uniqueClick: uniqueClick,
            uniqueClickTrackingDelivered: uniqueClickTrackingDelivered,
            uniqueOpen: uniqueOpen,
            uniqueOpenTrackingDelivered: uniqueOpenTrackingDelivered,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'buckets';
        buckets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricsEngagement',
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

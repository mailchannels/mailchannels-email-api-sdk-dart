// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_engagement_buckets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsEngagementBuckets extends MetricsEngagementBuckets {
  @override
  final BuiltList<MetricsBucket> click;
  @override
  final BuiltList<MetricsBucket> clickTrackingDelivered;
  @override
  final BuiltList<MetricsBucket> open;
  @override
  final BuiltList<MetricsBucket> openTrackingDelivered;
  @override
  final BuiltList<MetricsBucket>? uniqueClick;
  @override
  final BuiltList<MetricsBucket>? uniqueClickTrackingDelivered;
  @override
  final BuiltList<MetricsBucket>? uniqueOpen;
  @override
  final BuiltList<MetricsBucket>? uniqueOpenTrackingDelivered;

  factory _$MetricsEngagementBuckets([
    void Function(MetricsEngagementBucketsBuilder)? updates,
  ]) => (MetricsEngagementBucketsBuilder()..update(updates))._build();

  _$MetricsEngagementBuckets._({
    required this.click,
    required this.clickTrackingDelivered,
    required this.open,
    required this.openTrackingDelivered,
    this.uniqueClick,
    this.uniqueClickTrackingDelivered,
    this.uniqueOpen,
    this.uniqueOpenTrackingDelivered,
  }) : super._();
  @override
  MetricsEngagementBuckets rebuild(
    void Function(MetricsEngagementBucketsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MetricsEngagementBucketsBuilder toBuilder() =>
      MetricsEngagementBucketsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsEngagementBuckets &&
        click == other.click &&
        clickTrackingDelivered == other.clickTrackingDelivered &&
        open == other.open &&
        openTrackingDelivered == other.openTrackingDelivered &&
        uniqueClick == other.uniqueClick &&
        uniqueClickTrackingDelivered == other.uniqueClickTrackingDelivered &&
        uniqueOpen == other.uniqueOpen &&
        uniqueOpenTrackingDelivered == other.uniqueOpenTrackingDelivered;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, click.hashCode);
    _$hash = $jc(_$hash, clickTrackingDelivered.hashCode);
    _$hash = $jc(_$hash, open.hashCode);
    _$hash = $jc(_$hash, openTrackingDelivered.hashCode);
    _$hash = $jc(_$hash, uniqueClick.hashCode);
    _$hash = $jc(_$hash, uniqueClickTrackingDelivered.hashCode);
    _$hash = $jc(_$hash, uniqueOpen.hashCode);
    _$hash = $jc(_$hash, uniqueOpenTrackingDelivered.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsEngagementBucketsBuilder
    implements
        Builder<MetricsEngagementBuckets, MetricsEngagementBucketsBuilder> {
  _$MetricsEngagementBuckets? _$v;

  ListBuilder<MetricsBucket>? _click;
  ListBuilder<MetricsBucket> get click =>
      _$this._click ??= ListBuilder<MetricsBucket>();
  set click(ListBuilder<MetricsBucket>? click) => _$this._click = click;

  ListBuilder<MetricsBucket>? _clickTrackingDelivered;
  ListBuilder<MetricsBucket> get clickTrackingDelivered =>
      _$this._clickTrackingDelivered ??= ListBuilder<MetricsBucket>();
  set clickTrackingDelivered(
    ListBuilder<MetricsBucket>? clickTrackingDelivered,
  ) => _$this._clickTrackingDelivered = clickTrackingDelivered;

  ListBuilder<MetricsBucket>? _open;
  ListBuilder<MetricsBucket> get open =>
      _$this._open ??= ListBuilder<MetricsBucket>();
  set open(ListBuilder<MetricsBucket>? open) => _$this._open = open;

  ListBuilder<MetricsBucket>? _openTrackingDelivered;
  ListBuilder<MetricsBucket> get openTrackingDelivered =>
      _$this._openTrackingDelivered ??= ListBuilder<MetricsBucket>();
  set openTrackingDelivered(
    ListBuilder<MetricsBucket>? openTrackingDelivered,
  ) => _$this._openTrackingDelivered = openTrackingDelivered;

  ListBuilder<MetricsBucket>? _uniqueClick;
  ListBuilder<MetricsBucket> get uniqueClick =>
      _$this._uniqueClick ??= ListBuilder<MetricsBucket>();
  set uniqueClick(ListBuilder<MetricsBucket>? uniqueClick) =>
      _$this._uniqueClick = uniqueClick;

  ListBuilder<MetricsBucket>? _uniqueClickTrackingDelivered;
  ListBuilder<MetricsBucket> get uniqueClickTrackingDelivered =>
      _$this._uniqueClickTrackingDelivered ??= ListBuilder<MetricsBucket>();
  set uniqueClickTrackingDelivered(
    ListBuilder<MetricsBucket>? uniqueClickTrackingDelivered,
  ) => _$this._uniqueClickTrackingDelivered = uniqueClickTrackingDelivered;

  ListBuilder<MetricsBucket>? _uniqueOpen;
  ListBuilder<MetricsBucket> get uniqueOpen =>
      _$this._uniqueOpen ??= ListBuilder<MetricsBucket>();
  set uniqueOpen(ListBuilder<MetricsBucket>? uniqueOpen) =>
      _$this._uniqueOpen = uniqueOpen;

  ListBuilder<MetricsBucket>? _uniqueOpenTrackingDelivered;
  ListBuilder<MetricsBucket> get uniqueOpenTrackingDelivered =>
      _$this._uniqueOpenTrackingDelivered ??= ListBuilder<MetricsBucket>();
  set uniqueOpenTrackingDelivered(
    ListBuilder<MetricsBucket>? uniqueOpenTrackingDelivered,
  ) => _$this._uniqueOpenTrackingDelivered = uniqueOpenTrackingDelivered;

  MetricsEngagementBucketsBuilder() {
    MetricsEngagementBuckets._defaults(this);
  }

  MetricsEngagementBucketsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _click = $v.click.toBuilder();
      _clickTrackingDelivered = $v.clickTrackingDelivered.toBuilder();
      _open = $v.open.toBuilder();
      _openTrackingDelivered = $v.openTrackingDelivered.toBuilder();
      _uniqueClick = $v.uniqueClick?.toBuilder();
      _uniqueClickTrackingDelivered = $v.uniqueClickTrackingDelivered
          ?.toBuilder();
      _uniqueOpen = $v.uniqueOpen?.toBuilder();
      _uniqueOpenTrackingDelivered = $v.uniqueOpenTrackingDelivered
          ?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsEngagementBuckets other) {
    _$v = other as _$MetricsEngagementBuckets;
  }

  @override
  void update(void Function(MetricsEngagementBucketsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsEngagementBuckets build() => _build();

  _$MetricsEngagementBuckets _build() {
    _$MetricsEngagementBuckets _$result;
    try {
      _$result =
          _$v ??
          _$MetricsEngagementBuckets._(
            click: click.build(),
            clickTrackingDelivered: clickTrackingDelivered.build(),
            open: open.build(),
            openTrackingDelivered: openTrackingDelivered.build(),
            uniqueClick: _uniqueClick?.build(),
            uniqueClickTrackingDelivered: _uniqueClickTrackingDelivered
                ?.build(),
            uniqueOpen: _uniqueOpen?.build(),
            uniqueOpenTrackingDelivered: _uniqueOpenTrackingDelivered?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'click';
        click.build();
        _$failedField = 'clickTrackingDelivered';
        clickTrackingDelivered.build();
        _$failedField = 'open';
        open.build();
        _$failedField = 'openTrackingDelivered';
        openTrackingDelivered.build();
        _$failedField = 'uniqueClick';
        _uniqueClick?.build();
        _$failedField = 'uniqueClickTrackingDelivered';
        _uniqueClickTrackingDelivered?.build();
        _$failedField = 'uniqueOpen';
        _uniqueOpen?.build();
        _$failedField = 'uniqueOpenTrackingDelivered';
        _uniqueOpenTrackingDelivered?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricsEngagementBuckets',
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

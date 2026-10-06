// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_sender.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsSender extends MetricsSender {
  @override
  final int bounced;
  @override
  final int delivered;
  @override
  final int dropped;
  @override
  final String name;
  @override
  final int processed;

  factory _$MetricsSender([void Function(MetricsSenderBuilder)? updates]) =>
      (MetricsSenderBuilder()..update(updates))._build();

  _$MetricsSender._({
    required this.bounced,
    required this.delivered,
    required this.dropped,
    required this.name,
    required this.processed,
  }) : super._();
  @override
  MetricsSender rebuild(void Function(MetricsSenderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricsSenderBuilder toBuilder() => MetricsSenderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsSender &&
        bounced == other.bounced &&
        delivered == other.delivered &&
        dropped == other.dropped &&
        name == other.name &&
        processed == other.processed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bounced.hashCode);
    _$hash = $jc(_$hash, delivered.hashCode);
    _$hash = $jc(_$hash, dropped.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, processed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsSenderBuilder
    implements Builder<MetricsSender, MetricsSenderBuilder> {
  _$MetricsSender? _$v;

  int? _bounced;
  int? get bounced => _$this._bounced;
  set bounced(int? bounced) => _$this._bounced = bounced;

  int? _delivered;
  int? get delivered => _$this._delivered;
  set delivered(int? delivered) => _$this._delivered = delivered;

  int? _dropped;
  int? get dropped => _$this._dropped;
  set dropped(int? dropped) => _$this._dropped = dropped;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _processed;
  int? get processed => _$this._processed;
  set processed(int? processed) => _$this._processed = processed;

  MetricsSenderBuilder() {
    MetricsSender._defaults(this);
  }

  MetricsSenderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bounced = $v.bounced;
      _delivered = $v.delivered;
      _dropped = $v.dropped;
      _name = $v.name;
      _processed = $v.processed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsSender other) {
    _$v = other as _$MetricsSender;
  }

  @override
  void update(void Function(MetricsSenderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsSender build() => _build();

  _$MetricsSender _build() {
    final _$result =
        _$v ??
        _$MetricsSender._(
          bounced: BuiltValueNullFieldError.checkNotNull(
            bounced,
            r'MetricsSender',
            'bounced',
          ),
          delivered: BuiltValueNullFieldError.checkNotNull(
            delivered,
            r'MetricsSender',
            'delivered',
          ),
          dropped: BuiltValueNullFieldError.checkNotNull(
            dropped,
            r'MetricsSender',
            'dropped',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'MetricsSender',
            'name',
          ),
          processed: BuiltValueNullFieldError.checkNotNull(
            processed,
            r'MetricsSender',
            'processed',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

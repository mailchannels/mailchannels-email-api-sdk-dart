// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_recipient_behaviour.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsRecipientBehaviour extends MetricsRecipientBehaviour {
  @override
  final MetricsRecipientBehaviourBuckets buckets;
  @override
  final DateTime? endTime;
  @override
  final DateTime? startTime;
  @override
  final int unsubscribeDelivered;
  @override
  final int unsubscribed;

  factory _$MetricsRecipientBehaviour([
    void Function(MetricsRecipientBehaviourBuilder)? updates,
  ]) => (MetricsRecipientBehaviourBuilder()..update(updates))._build();

  _$MetricsRecipientBehaviour._({
    required this.buckets,
    this.endTime,
    this.startTime,
    required this.unsubscribeDelivered,
    required this.unsubscribed,
  }) : super._();
  @override
  MetricsRecipientBehaviour rebuild(
    void Function(MetricsRecipientBehaviourBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MetricsRecipientBehaviourBuilder toBuilder() =>
      MetricsRecipientBehaviourBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsRecipientBehaviour &&
        buckets == other.buckets &&
        endTime == other.endTime &&
        startTime == other.startTime &&
        unsubscribeDelivered == other.unsubscribeDelivered &&
        unsubscribed == other.unsubscribed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buckets.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, unsubscribeDelivered.hashCode);
    _$hash = $jc(_$hash, unsubscribed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsRecipientBehaviourBuilder
    implements
        Builder<MetricsRecipientBehaviour, MetricsRecipientBehaviourBuilder> {
  _$MetricsRecipientBehaviour? _$v;

  MetricsRecipientBehaviourBucketsBuilder? _buckets;
  MetricsRecipientBehaviourBucketsBuilder get buckets =>
      _$this._buckets ??= MetricsRecipientBehaviourBucketsBuilder();
  set buckets(MetricsRecipientBehaviourBucketsBuilder? buckets) =>
      _$this._buckets = buckets;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  int? _unsubscribeDelivered;
  int? get unsubscribeDelivered => _$this._unsubscribeDelivered;
  set unsubscribeDelivered(int? unsubscribeDelivered) =>
      _$this._unsubscribeDelivered = unsubscribeDelivered;

  int? _unsubscribed;
  int? get unsubscribed => _$this._unsubscribed;
  set unsubscribed(int? unsubscribed) => _$this._unsubscribed = unsubscribed;

  MetricsRecipientBehaviourBuilder() {
    MetricsRecipientBehaviour._defaults(this);
  }

  MetricsRecipientBehaviourBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buckets = $v.buckets.toBuilder();
      _endTime = $v.endTime;
      _startTime = $v.startTime;
      _unsubscribeDelivered = $v.unsubscribeDelivered;
      _unsubscribed = $v.unsubscribed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsRecipientBehaviour other) {
    _$v = other as _$MetricsRecipientBehaviour;
  }

  @override
  void update(void Function(MetricsRecipientBehaviourBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsRecipientBehaviour build() => _build();

  _$MetricsRecipientBehaviour _build() {
    _$MetricsRecipientBehaviour _$result;
    try {
      _$result =
          _$v ??
          _$MetricsRecipientBehaviour._(
            buckets: buckets.build(),
            endTime: endTime,
            startTime: startTime,
            unsubscribeDelivered: BuiltValueNullFieldError.checkNotNull(
              unsubscribeDelivered,
              r'MetricsRecipientBehaviour',
              'unsubscribeDelivered',
            ),
            unsubscribed: BuiltValueNullFieldError.checkNotNull(
              unsubscribed,
              r'MetricsRecipientBehaviour',
              'unsubscribed',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'buckets';
        buckets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricsRecipientBehaviour',
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

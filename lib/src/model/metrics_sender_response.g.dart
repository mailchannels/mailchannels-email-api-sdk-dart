// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_sender_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsSenderResponse extends MetricsSenderResponse {
  @override
  final DateTime? endTime;
  @override
  final int limit;
  @override
  final int offset;
  @override
  final BuiltList<MetricsSender> senders;
  @override
  final DateTime? startTime;
  @override
  final int total;

  factory _$MetricsSenderResponse([
    void Function(MetricsSenderResponseBuilder)? updates,
  ]) => (MetricsSenderResponseBuilder()..update(updates))._build();

  _$MetricsSenderResponse._({
    this.endTime,
    required this.limit,
    required this.offset,
    required this.senders,
    this.startTime,
    required this.total,
  }) : super._();
  @override
  MetricsSenderResponse rebuild(
    void Function(MetricsSenderResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MetricsSenderResponseBuilder toBuilder() =>
      MetricsSenderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsSenderResponse &&
        endTime == other.endTime &&
        limit == other.limit &&
        offset == other.offset &&
        senders == other.senders &&
        startTime == other.startTime &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, senders.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsSenderResponseBuilder
    implements Builder<MetricsSenderResponse, MetricsSenderResponseBuilder> {
  _$MetricsSenderResponse? _$v;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ListBuilder<MetricsSender>? _senders;
  ListBuilder<MetricsSender> get senders =>
      _$this._senders ??= ListBuilder<MetricsSender>();
  set senders(ListBuilder<MetricsSender>? senders) => _$this._senders = senders;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  MetricsSenderResponseBuilder() {
    MetricsSenderResponse._defaults(this);
  }

  MetricsSenderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endTime = $v.endTime;
      _limit = $v.limit;
      _offset = $v.offset;
      _senders = $v.senders.toBuilder();
      _startTime = $v.startTime;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsSenderResponse other) {
    _$v = other as _$MetricsSenderResponse;
  }

  @override
  void update(void Function(MetricsSenderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsSenderResponse build() => _build();

  _$MetricsSenderResponse _build() {
    _$MetricsSenderResponse _$result;
    try {
      _$result =
          _$v ??
          _$MetricsSenderResponse._(
            endTime: endTime,
            limit: BuiltValueNullFieldError.checkNotNull(
              limit,
              r'MetricsSenderResponse',
              'limit',
            ),
            offset: BuiltValueNullFieldError.checkNotNull(
              offset,
              r'MetricsSenderResponse',
              'offset',
            ),
            senders: senders.build(),
            startTime: startTime,
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'MetricsSenderResponse',
              'total',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'senders';
        senders.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricsSenderResponse',
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

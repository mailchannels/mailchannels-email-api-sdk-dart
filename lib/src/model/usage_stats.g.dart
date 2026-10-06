// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsageStats extends UsageStats {
  @override
  final int monthlyLimit;
  @override
  final Date? periodEndDate;
  @override
  final Date? periodStartDate;
  @override
  final int totalUsage;

  factory _$UsageStats([void Function(UsageStatsBuilder)? updates]) =>
      (UsageStatsBuilder()..update(updates))._build();

  _$UsageStats._({
    required this.monthlyLimit,
    this.periodEndDate,
    this.periodStartDate,
    required this.totalUsage,
  }) : super._();
  @override
  UsageStats rebuild(void Function(UsageStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsageStatsBuilder toBuilder() => UsageStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsageStats &&
        monthlyLimit == other.monthlyLimit &&
        periodEndDate == other.periodEndDate &&
        periodStartDate == other.periodStartDate &&
        totalUsage == other.totalUsage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, monthlyLimit.hashCode);
    _$hash = $jc(_$hash, periodEndDate.hashCode);
    _$hash = $jc(_$hash, periodStartDate.hashCode);
    _$hash = $jc(_$hash, totalUsage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UsageStatsBuilder implements Builder<UsageStats, UsageStatsBuilder> {
  _$UsageStats? _$v;

  int? _monthlyLimit;
  int? get monthlyLimit => _$this._monthlyLimit;
  set monthlyLimit(int? monthlyLimit) => _$this._monthlyLimit = monthlyLimit;

  Date? _periodEndDate;
  Date? get periodEndDate => _$this._periodEndDate;
  set periodEndDate(Date? periodEndDate) =>
      _$this._periodEndDate = periodEndDate;

  Date? _periodStartDate;
  Date? get periodStartDate => _$this._periodStartDate;
  set periodStartDate(Date? periodStartDate) =>
      _$this._periodStartDate = periodStartDate;

  int? _totalUsage;
  int? get totalUsage => _$this._totalUsage;
  set totalUsage(int? totalUsage) => _$this._totalUsage = totalUsage;

  UsageStatsBuilder() {
    UsageStats._defaults(this);
  }

  UsageStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _monthlyLimit = $v.monthlyLimit;
      _periodEndDate = $v.periodEndDate;
      _periodStartDate = $v.periodStartDate;
      _totalUsage = $v.totalUsage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsageStats other) {
    _$v = other as _$UsageStats;
  }

  @override
  void update(void Function(UsageStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsageStats build() => _build();

  _$UsageStats _build() {
    final _$result =
        _$v ??
        _$UsageStats._(
          monthlyLimit: BuiltValueNullFieldError.checkNotNull(
            monthlyLimit,
            r'UsageStats',
            'monthlyLimit',
          ),
          periodEndDate: periodEndDate,
          periodStartDate: periodStartDate,
          totalUsage: BuiltValueNullFieldError.checkNotNull(
            totalUsage,
            r'UsageStats',
            'totalUsage',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

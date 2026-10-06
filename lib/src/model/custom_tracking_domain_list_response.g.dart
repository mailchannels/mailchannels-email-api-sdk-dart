// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_tracking_domain_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomTrackingDomainListResponse
    extends CustomTrackingDomainListResponse {
  @override
  final BuiltList<CustomTrackingDomain> customTrackingDomains;
  @override
  final int total;

  factory _$CustomTrackingDomainListResponse([
    void Function(CustomTrackingDomainListResponseBuilder)? updates,
  ]) => (CustomTrackingDomainListResponseBuilder()..update(updates))._build();

  _$CustomTrackingDomainListResponse._({
    required this.customTrackingDomains,
    required this.total,
  }) : super._();
  @override
  CustomTrackingDomainListResponse rebuild(
    void Function(CustomTrackingDomainListResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomTrackingDomainListResponseBuilder toBuilder() =>
      CustomTrackingDomainListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomTrackingDomainListResponse &&
        customTrackingDomains == other.customTrackingDomains &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customTrackingDomains.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CustomTrackingDomainListResponseBuilder
    implements
        Builder<
          CustomTrackingDomainListResponse,
          CustomTrackingDomainListResponseBuilder
        > {
  _$CustomTrackingDomainListResponse? _$v;

  ListBuilder<CustomTrackingDomain>? _customTrackingDomains;
  ListBuilder<CustomTrackingDomain> get customTrackingDomains =>
      _$this._customTrackingDomains ??= ListBuilder<CustomTrackingDomain>();
  set customTrackingDomains(
    ListBuilder<CustomTrackingDomain>? customTrackingDomains,
  ) => _$this._customTrackingDomains = customTrackingDomains;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  CustomTrackingDomainListResponseBuilder() {
    CustomTrackingDomainListResponse._defaults(this);
  }

  CustomTrackingDomainListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customTrackingDomains = $v.customTrackingDomains.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomTrackingDomainListResponse other) {
    _$v = other as _$CustomTrackingDomainListResponse;
  }

  @override
  void update(void Function(CustomTrackingDomainListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomTrackingDomainListResponse build() => _build();

  _$CustomTrackingDomainListResponse _build() {
    _$CustomTrackingDomainListResponse _$result;
    try {
      _$result =
          _$v ??
          _$CustomTrackingDomainListResponse._(
            customTrackingDomains: customTrackingDomains.build(),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'CustomTrackingDomainListResponse',
              'total',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customTrackingDomains';
        customTrackingDomains.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CustomTrackingDomainListResponse',
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

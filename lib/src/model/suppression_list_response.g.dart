// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suppression_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SuppressionListResponse extends SuppressionListResponse {
  @override
  final BuiltList<SuppressionEntryResponse> suppressionList;

  factory _$SuppressionListResponse([
    void Function(SuppressionListResponseBuilder)? updates,
  ]) => (SuppressionListResponseBuilder()..update(updates))._build();

  _$SuppressionListResponse._({required this.suppressionList}) : super._();
  @override
  SuppressionListResponse rebuild(
    void Function(SuppressionListResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SuppressionListResponseBuilder toBuilder() =>
      SuppressionListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuppressionListResponse &&
        suppressionList == other.suppressionList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, suppressionList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SuppressionListResponseBuilder
    implements
        Builder<SuppressionListResponse, SuppressionListResponseBuilder> {
  _$SuppressionListResponse? _$v;

  ListBuilder<SuppressionEntryResponse>? _suppressionList;
  ListBuilder<SuppressionEntryResponse> get suppressionList =>
      _$this._suppressionList ??= ListBuilder<SuppressionEntryResponse>();
  set suppressionList(ListBuilder<SuppressionEntryResponse>? suppressionList) =>
      _$this._suppressionList = suppressionList;

  SuppressionListResponseBuilder() {
    SuppressionListResponse._defaults(this);
  }

  SuppressionListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _suppressionList = $v.suppressionList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuppressionListResponse other) {
    _$v = other as _$SuppressionListResponse;
  }

  @override
  void update(void Function(SuppressionListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuppressionListResponse build() => _build();

  _$SuppressionListResponse _build() {
    _$SuppressionListResponse _$result;
    try {
      _$result =
          _$v ??
          _$SuppressionListResponse._(suppressionList: suppressionList.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suppressionList';
        suppressionList.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SuppressionListResponse',
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

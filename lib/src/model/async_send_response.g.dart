// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_send_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AsyncSendResponse extends AsyncSendResponse {
  @override
  final DateTime queuedAt;
  @override
  final String requestId;

  factory _$AsyncSendResponse([
    void Function(AsyncSendResponseBuilder)? updates,
  ]) => (AsyncSendResponseBuilder()..update(updates))._build();

  _$AsyncSendResponse._({required this.queuedAt, required this.requestId})
    : super._();
  @override
  AsyncSendResponse rebuild(void Function(AsyncSendResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AsyncSendResponseBuilder toBuilder() =>
      AsyncSendResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AsyncSendResponse &&
        queuedAt == other.queuedAt &&
        requestId == other.requestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queuedAt.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AsyncSendResponseBuilder
    implements Builder<AsyncSendResponse, AsyncSendResponseBuilder> {
  _$AsyncSendResponse? _$v;

  DateTime? _queuedAt;
  DateTime? get queuedAt => _$this._queuedAt;
  set queuedAt(DateTime? queuedAt) => _$this._queuedAt = queuedAt;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  AsyncSendResponseBuilder() {
    AsyncSendResponse._defaults(this);
  }

  AsyncSendResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queuedAt = $v.queuedAt;
      _requestId = $v.requestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AsyncSendResponse other) {
    _$v = other as _$AsyncSendResponse;
  }

  @override
  void update(void Function(AsyncSendResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AsyncSendResponse build() => _build();

  _$AsyncSendResponse _build() {
    final _$result =
        _$v ??
        _$AsyncSendResponse._(
          queuedAt: BuiltValueNullFieldError.checkNotNull(
            queuedAt,
            r'AsyncSendResponse',
            'queuedAt',
          ),
          requestId: BuiltValueNullFieldError.checkNotNull(
            requestId,
            r'AsyncSendResponse',
            'requestId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

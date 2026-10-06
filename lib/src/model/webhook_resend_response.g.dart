// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_resend_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookResendResponse extends WebhookResendResponse {
  @override
  final int batchId;
  @override
  final DateTime createdAt;
  @override
  final String customerHandle;
  @override
  final int? durationInMs;
  @override
  final int eventCount;
  @override
  final int? statusCode;
  @override
  final String webhook;

  factory _$WebhookResendResponse([
    void Function(WebhookResendResponseBuilder)? updates,
  ]) => (WebhookResendResponseBuilder()..update(updates))._build();

  _$WebhookResendResponse._({
    required this.batchId,
    required this.createdAt,
    required this.customerHandle,
    this.durationInMs,
    required this.eventCount,
    this.statusCode,
    required this.webhook,
  }) : super._();
  @override
  WebhookResendResponse rebuild(
    void Function(WebhookResendResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WebhookResendResponseBuilder toBuilder() =>
      WebhookResendResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookResendResponse &&
        batchId == other.batchId &&
        createdAt == other.createdAt &&
        customerHandle == other.customerHandle &&
        durationInMs == other.durationInMs &&
        eventCount == other.eventCount &&
        statusCode == other.statusCode &&
        webhook == other.webhook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, customerHandle.hashCode);
    _$hash = $jc(_$hash, durationInMs.hashCode);
    _$hash = $jc(_$hash, eventCount.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, webhook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WebhookResendResponseBuilder
    implements Builder<WebhookResendResponse, WebhookResendResponseBuilder> {
  _$WebhookResendResponse? _$v;

  int? _batchId;
  int? get batchId => _$this._batchId;
  set batchId(int? batchId) => _$this._batchId = batchId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _customerHandle;
  String? get customerHandle => _$this._customerHandle;
  set customerHandle(String? customerHandle) =>
      _$this._customerHandle = customerHandle;

  int? _durationInMs;
  int? get durationInMs => _$this._durationInMs;
  set durationInMs(int? durationInMs) => _$this._durationInMs = durationInMs;

  int? _eventCount;
  int? get eventCount => _$this._eventCount;
  set eventCount(int? eventCount) => _$this._eventCount = eventCount;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _webhook;
  String? get webhook => _$this._webhook;
  set webhook(String? webhook) => _$this._webhook = webhook;

  WebhookResendResponseBuilder() {
    WebhookResendResponse._defaults(this);
  }

  WebhookResendResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _batchId = $v.batchId;
      _createdAt = $v.createdAt;
      _customerHandle = $v.customerHandle;
      _durationInMs = $v.durationInMs;
      _eventCount = $v.eventCount;
      _statusCode = $v.statusCode;
      _webhook = $v.webhook;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookResendResponse other) {
    _$v = other as _$WebhookResendResponse;
  }

  @override
  void update(void Function(WebhookResendResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookResendResponse build() => _build();

  _$WebhookResendResponse _build() {
    final _$result =
        _$v ??
        _$WebhookResendResponse._(
          batchId: BuiltValueNullFieldError.checkNotNull(
            batchId,
            r'WebhookResendResponse',
            'batchId',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'WebhookResendResponse',
            'createdAt',
          ),
          customerHandle: BuiltValueNullFieldError.checkNotNull(
            customerHandle,
            r'WebhookResendResponse',
            'customerHandle',
          ),
          durationInMs: durationInMs,
          eventCount: BuiltValueNullFieldError.checkNotNull(
            eventCount,
            r'WebhookResendResponse',
            'eventCount',
          ),
          statusCode: statusCode,
          webhook: BuiltValueNullFieldError.checkNotNull(
            webhook,
            r'WebhookResendResponse',
            'webhook',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

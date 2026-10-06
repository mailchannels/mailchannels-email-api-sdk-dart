// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_batch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebhookBatchStatusEnum _$webhookBatchStatusEnum_n1xxResponse =
    const WebhookBatchStatusEnum._('n1xxResponse');
const WebhookBatchStatusEnum _$webhookBatchStatusEnum_n2xxResponse =
    const WebhookBatchStatusEnum._('n2xxResponse');
const WebhookBatchStatusEnum _$webhookBatchStatusEnum_n3xxResponse =
    const WebhookBatchStatusEnum._('n3xxResponse');
const WebhookBatchStatusEnum _$webhookBatchStatusEnum_n4xxResponse =
    const WebhookBatchStatusEnum._('n4xxResponse');
const WebhookBatchStatusEnum _$webhookBatchStatusEnum_n5xxResponse =
    const WebhookBatchStatusEnum._('n5xxResponse');
const WebhookBatchStatusEnum _$webhookBatchStatusEnum_noResponse =
    const WebhookBatchStatusEnum._('noResponse');

WebhookBatchStatusEnum _$webhookBatchStatusEnumValueOf(String name) {
  switch (name) {
    case 'n1xxResponse':
      return _$webhookBatchStatusEnum_n1xxResponse;
    case 'n2xxResponse':
      return _$webhookBatchStatusEnum_n2xxResponse;
    case 'n3xxResponse':
      return _$webhookBatchStatusEnum_n3xxResponse;
    case 'n4xxResponse':
      return _$webhookBatchStatusEnum_n4xxResponse;
    case 'n5xxResponse':
      return _$webhookBatchStatusEnum_n5xxResponse;
    case 'noResponse':
      return _$webhookBatchStatusEnum_noResponse;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhookBatchStatusEnum> _$webhookBatchStatusEnumValues =
    BuiltSet<WebhookBatchStatusEnum>(const <WebhookBatchStatusEnum>[
      _$webhookBatchStatusEnum_n1xxResponse,
      _$webhookBatchStatusEnum_n2xxResponse,
      _$webhookBatchStatusEnum_n3xxResponse,
      _$webhookBatchStatusEnum_n4xxResponse,
      _$webhookBatchStatusEnum_n5xxResponse,
      _$webhookBatchStatusEnum_noResponse,
    ]);

Serializer<WebhookBatchStatusEnum> _$webhookBatchStatusEnumSerializer =
    _$WebhookBatchStatusEnumSerializer();

class _$WebhookBatchStatusEnumSerializer
    implements PrimitiveSerializer<WebhookBatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n1xxResponse': '1xx_response',
    'n2xxResponse': '2xx_response',
    'n3xxResponse': '3xx_response',
    'n4xxResponse': '4xx_response',
    'n5xxResponse': '5xx_response',
    'noResponse': 'no_response',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '1xx_response': 'n1xxResponse',
    '2xx_response': 'n2xxResponse',
    '3xx_response': 'n3xxResponse',
    '4xx_response': 'n4xxResponse',
    '5xx_response': 'n5xxResponse',
    'no_response': 'noResponse',
  };

  @override
  final Iterable<Type> types = const <Type>[WebhookBatchStatusEnum];
  @override
  final String wireName = 'WebhookBatchStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    WebhookBatchStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WebhookBatchStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WebhookBatchStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WebhookBatch extends WebhookBatch {
  @override
  final int batchId;
  @override
  final DateTime createdAt;
  @override
  final String customerHandle;
  @override
  final WebhookBatchDuration? duration;
  @override
  final int eventCount;
  @override
  final WebhookBatchStatusEnum status;
  @override
  final int? statusCode;
  @override
  final String webhook;

  factory _$WebhookBatch([void Function(WebhookBatchBuilder)? updates]) =>
      (WebhookBatchBuilder()..update(updates))._build();

  _$WebhookBatch._({
    required this.batchId,
    required this.createdAt,
    required this.customerHandle,
    this.duration,
    required this.eventCount,
    required this.status,
    this.statusCode,
    required this.webhook,
  }) : super._();
  @override
  WebhookBatch rebuild(void Function(WebhookBatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookBatchBuilder toBuilder() => WebhookBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookBatch &&
        batchId == other.batchId &&
        createdAt == other.createdAt &&
        customerHandle == other.customerHandle &&
        duration == other.duration &&
        eventCount == other.eventCount &&
        status == other.status &&
        statusCode == other.statusCode &&
        webhook == other.webhook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, customerHandle.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, eventCount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, webhook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WebhookBatchBuilder
    implements Builder<WebhookBatch, WebhookBatchBuilder> {
  _$WebhookBatch? _$v;

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

  WebhookBatchDurationBuilder? _duration;
  WebhookBatchDurationBuilder get duration =>
      _$this._duration ??= WebhookBatchDurationBuilder();
  set duration(WebhookBatchDurationBuilder? duration) =>
      _$this._duration = duration;

  int? _eventCount;
  int? get eventCount => _$this._eventCount;
  set eventCount(int? eventCount) => _$this._eventCount = eventCount;

  WebhookBatchStatusEnum? _status;
  WebhookBatchStatusEnum? get status => _$this._status;
  set status(WebhookBatchStatusEnum? status) => _$this._status = status;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _webhook;
  String? get webhook => _$this._webhook;
  set webhook(String? webhook) => _$this._webhook = webhook;

  WebhookBatchBuilder() {
    WebhookBatch._defaults(this);
  }

  WebhookBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _batchId = $v.batchId;
      _createdAt = $v.createdAt;
      _customerHandle = $v.customerHandle;
      _duration = $v.duration?.toBuilder();
      _eventCount = $v.eventCount;
      _status = $v.status;
      _statusCode = $v.statusCode;
      _webhook = $v.webhook;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookBatch other) {
    _$v = other as _$WebhookBatch;
  }

  @override
  void update(void Function(WebhookBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookBatch build() => _build();

  _$WebhookBatch _build() {
    _$WebhookBatch _$result;
    try {
      _$result =
          _$v ??
          _$WebhookBatch._(
            batchId: BuiltValueNullFieldError.checkNotNull(
              batchId,
              r'WebhookBatch',
              'batchId',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'WebhookBatch',
              'createdAt',
            ),
            customerHandle: BuiltValueNullFieldError.checkNotNull(
              customerHandle,
              r'WebhookBatch',
              'customerHandle',
            ),
            duration: _duration?.build(),
            eventCount: BuiltValueNullFieldError.checkNotNull(
              eventCount,
              r'WebhookBatch',
              'eventCount',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'WebhookBatch',
              'status',
            ),
            statusCode: statusCode,
            webhook: BuiltValueNullFieldError.checkNotNull(
              webhook,
              r'WebhookBatch',
              'webhook',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'duration';
        _duration?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WebhookBatch',
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

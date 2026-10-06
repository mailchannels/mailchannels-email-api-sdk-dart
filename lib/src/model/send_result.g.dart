// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SendResultStatusEnum _$sendResultStatusEnum_sent =
    const SendResultStatusEnum._('sent');
const SendResultStatusEnum _$sendResultStatusEnum_failed =
    const SendResultStatusEnum._('failed');

SendResultStatusEnum _$sendResultStatusEnumValueOf(String name) {
  switch (name) {
    case 'sent':
      return _$sendResultStatusEnum_sent;
    case 'failed':
      return _$sendResultStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SendResultStatusEnum> _$sendResultStatusEnumValues =
    BuiltSet<SendResultStatusEnum>(const <SendResultStatusEnum>[
      _$sendResultStatusEnum_sent,
      _$sendResultStatusEnum_failed,
    ]);

Serializer<SendResultStatusEnum> _$sendResultStatusEnumSerializer =
    _$SendResultStatusEnumSerializer();

class _$SendResultStatusEnumSerializer
    implements PrimitiveSerializer<SendResultStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sent': 'sent',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sent': 'sent',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[SendResultStatusEnum];
  @override
  final String wireName = 'SendResultStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SendResultStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SendResultStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SendResultStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SendResult extends SendResult {
  @override
  final int index;
  @override
  final String? messageId;
  @override
  final String? reason;
  @override
  final SendResultStatusEnum? status;

  factory _$SendResult([void Function(SendResultBuilder)? updates]) =>
      (SendResultBuilder()..update(updates))._build();

  _$SendResult._({
    required this.index,
    this.messageId,
    this.reason,
    this.status,
  }) : super._();
  @override
  SendResult rebuild(void Function(SendResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendResultBuilder toBuilder() => SendResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendResult &&
        index == other.index &&
        messageId == other.messageId &&
        reason == other.reason &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, messageId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SendResultBuilder implements Builder<SendResult, SendResultBuilder> {
  _$SendResult? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  String? _messageId;
  String? get messageId => _$this._messageId;
  set messageId(String? messageId) => _$this._messageId = messageId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SendResultStatusEnum? _status;
  SendResultStatusEnum? get status => _$this._status;
  set status(SendResultStatusEnum? status) => _$this._status = status;

  SendResultBuilder() {
    SendResult._defaults(this);
  }

  SendResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _messageId = $v.messageId;
      _reason = $v.reason;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendResult other) {
    _$v = other as _$SendResult;
  }

  @override
  void update(void Function(SendResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendResult build() => _build();

  _$SendResult _build() {
    final _$result =
        _$v ??
        _$SendResult._(
          index: BuiltValueNullFieldError.checkNotNull(
            index,
            r'SendResult',
            'index',
          ),
          messageId: messageId,
          reason: reason,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

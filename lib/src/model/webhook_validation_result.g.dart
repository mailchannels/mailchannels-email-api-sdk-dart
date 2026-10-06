// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_validation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebhookValidationResultResultEnum
_$webhookValidationResultResultEnum_passed =
    const WebhookValidationResultResultEnum._('passed');
const WebhookValidationResultResultEnum
_$webhookValidationResultResultEnum_failed =
    const WebhookValidationResultResultEnum._('failed');

WebhookValidationResultResultEnum _$webhookValidationResultResultEnumValueOf(
  String name,
) {
  switch (name) {
    case 'passed':
      return _$webhookValidationResultResultEnum_passed;
    case 'failed':
      return _$webhookValidationResultResultEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhookValidationResultResultEnum>
_$webhookValidationResultResultEnumValues =
    BuiltSet<WebhookValidationResultResultEnum>(
      const <WebhookValidationResultResultEnum>[
        _$webhookValidationResultResultEnum_passed,
        _$webhookValidationResultResultEnum_failed,
      ],
    );

Serializer<WebhookValidationResultResultEnum>
_$webhookValidationResultResultEnumSerializer =
    _$WebhookValidationResultResultEnumSerializer();

class _$WebhookValidationResultResultEnumSerializer
    implements PrimitiveSerializer<WebhookValidationResultResultEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passed': 'passed',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passed': 'passed',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[WebhookValidationResultResultEnum];
  @override
  final String wireName = 'WebhookValidationResultResultEnum';

  @override
  Object serialize(
    Serializers serializers,
    WebhookValidationResultResultEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WebhookValidationResultResultEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WebhookValidationResultResultEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WebhookValidationResult extends WebhookValidationResult {
  @override
  final WebhookResponse? response;
  @override
  final WebhookValidationResultResultEnum result;
  @override
  final String webhook;

  factory _$WebhookValidationResult([
    void Function(WebhookValidationResultBuilder)? updates,
  ]) => (WebhookValidationResultBuilder()..update(updates))._build();

  _$WebhookValidationResult._({
    this.response,
    required this.result,
    required this.webhook,
  }) : super._();
  @override
  WebhookValidationResult rebuild(
    void Function(WebhookValidationResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WebhookValidationResultBuilder toBuilder() =>
      WebhookValidationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookValidationResult &&
        response == other.response &&
        result == other.result &&
        webhook == other.webhook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, webhook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WebhookValidationResultBuilder
    implements
        Builder<WebhookValidationResult, WebhookValidationResultBuilder> {
  _$WebhookValidationResult? _$v;

  WebhookResponseBuilder? _response;
  WebhookResponseBuilder get response =>
      _$this._response ??= WebhookResponseBuilder();
  set response(WebhookResponseBuilder? response) => _$this._response = response;

  WebhookValidationResultResultEnum? _result;
  WebhookValidationResultResultEnum? get result => _$this._result;
  set result(WebhookValidationResultResultEnum? result) =>
      _$this._result = result;

  String? _webhook;
  String? get webhook => _$this._webhook;
  set webhook(String? webhook) => _$this._webhook = webhook;

  WebhookValidationResultBuilder() {
    WebhookValidationResult._defaults(this);
  }

  WebhookValidationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response?.toBuilder();
      _result = $v.result;
      _webhook = $v.webhook;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookValidationResult other) {
    _$v = other as _$WebhookValidationResult;
  }

  @override
  void update(void Function(WebhookValidationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookValidationResult build() => _build();

  _$WebhookValidationResult _build() {
    _$WebhookValidationResult _$result;
    try {
      _$result =
          _$v ??
          _$WebhookValidationResult._(
            response: _response?.build(),
            result: BuiltValueNullFieldError.checkNotNull(
              result,
              r'WebhookValidationResult',
              'result',
            ),
            webhook: BuiltValueNullFieldError.checkNotNull(
              webhook,
              r'WebhookValidationResult',
              'webhook',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WebhookValidationResult',
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

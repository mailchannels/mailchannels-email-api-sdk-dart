// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_validation_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookValidationRequestBody extends WebhookValidationRequestBody {
  @override
  final String? requestId;

  factory _$WebhookValidationRequestBody([
    void Function(WebhookValidationRequestBodyBuilder)? updates,
  ]) => (WebhookValidationRequestBodyBuilder()..update(updates))._build();

  _$WebhookValidationRequestBody._({this.requestId}) : super._();
  @override
  WebhookValidationRequestBody rebuild(
    void Function(WebhookValidationRequestBodyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WebhookValidationRequestBodyBuilder toBuilder() =>
      WebhookValidationRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookValidationRequestBody &&
        requestId == other.requestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WebhookValidationRequestBodyBuilder
    implements
        Builder<
          WebhookValidationRequestBody,
          WebhookValidationRequestBodyBuilder
        > {
  _$WebhookValidationRequestBody? _$v;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  WebhookValidationRequestBodyBuilder() {
    WebhookValidationRequestBody._defaults(this);
  }

  WebhookValidationRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookValidationRequestBody other) {
    _$v = other as _$WebhookValidationRequestBody;
  }

  @override
  void update(void Function(WebhookValidationRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookValidationRequestBody build() => _build();

  _$WebhookValidationRequestBody _build() {
    final _$result =
        _$v ?? _$WebhookValidationRequestBody._(requestId: requestId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

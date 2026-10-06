// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookResponse extends WebhookResponse {
  @override
  final String? body;
  @override
  final int status;

  factory _$WebhookResponse([void Function(WebhookResponseBuilder)? updates]) =>
      (WebhookResponseBuilder()..update(updates))._build();

  _$WebhookResponse._({this.body, required this.status}) : super._();
  @override
  WebhookResponse rebuild(void Function(WebhookResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookResponseBuilder toBuilder() => WebhookResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookResponse &&
        body == other.body &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WebhookResponseBuilder
    implements Builder<WebhookResponse, WebhookResponseBuilder> {
  _$WebhookResponse? _$v;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  WebhookResponseBuilder() {
    WebhookResponse._defaults(this);
  }

  WebhookResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookResponse other) {
    _$v = other as _$WebhookResponse;
  }

  @override
  void update(void Function(WebhookResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookResponse build() => _build();

  _$WebhookResponse _build() {
    final _$result =
        _$v ??
        _$WebhookResponse._(
          body: body,
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'WebhookResponse',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Webhook extends Webhook {
  @override
  final String webhook;

  factory _$Webhook([void Function(WebhookBuilder)? updates]) =>
      (WebhookBuilder()..update(updates))._build();

  _$Webhook._({required this.webhook}) : super._();
  @override
  Webhook rebuild(void Function(WebhookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookBuilder toBuilder() => WebhookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Webhook && webhook == other.webhook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, webhook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WebhookBuilder implements Builder<Webhook, WebhookBuilder> {
  _$Webhook? _$v;

  String? _webhook;
  String? get webhook => _$this._webhook;
  set webhook(String? webhook) => _$this._webhook = webhook;

  WebhookBuilder() {
    Webhook._defaults(this);
  }

  WebhookBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _webhook = $v.webhook;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Webhook other) {
    _$v = other as _$Webhook;
  }

  @override
  void update(void Function(WebhookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Webhook build() => _build();

  _$Webhook _build() {
    final _$result =
        _$v ??
        _$Webhook._(
          webhook: BuiltValueNullFieldError.checkNotNull(
            webhook,
            r'Webhook',
            'webhook',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

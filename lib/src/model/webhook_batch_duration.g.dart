// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_batch_duration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebhookBatchDurationUnitEnum _$webhookBatchDurationUnitEnum_milliseconds =
    const WebhookBatchDurationUnitEnum._('milliseconds');

WebhookBatchDurationUnitEnum _$webhookBatchDurationUnitEnumValueOf(
  String name,
) {
  switch (name) {
    case 'milliseconds':
      return _$webhookBatchDurationUnitEnum_milliseconds;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhookBatchDurationUnitEnum>
_$webhookBatchDurationUnitEnumValues = BuiltSet<WebhookBatchDurationUnitEnum>(
  const <WebhookBatchDurationUnitEnum>[
    _$webhookBatchDurationUnitEnum_milliseconds,
  ],
);

Serializer<WebhookBatchDurationUnitEnum>
_$webhookBatchDurationUnitEnumSerializer =
    _$WebhookBatchDurationUnitEnumSerializer();

class _$WebhookBatchDurationUnitEnumSerializer
    implements PrimitiveSerializer<WebhookBatchDurationUnitEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'milliseconds': 'milliseconds',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'milliseconds': 'milliseconds',
  };

  @override
  final Iterable<Type> types = const <Type>[WebhookBatchDurationUnitEnum];
  @override
  final String wireName = 'WebhookBatchDurationUnitEnum';

  @override
  Object serialize(
    Serializers serializers,
    WebhookBatchDurationUnitEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WebhookBatchDurationUnitEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WebhookBatchDurationUnitEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WebhookBatchDuration extends WebhookBatchDuration {
  @override
  final WebhookBatchDurationUnitEnum unit;
  @override
  final int value;

  factory _$WebhookBatchDuration([
    void Function(WebhookBatchDurationBuilder)? updates,
  ]) => (WebhookBatchDurationBuilder()..update(updates))._build();

  _$WebhookBatchDuration._({required this.unit, required this.value})
    : super._();
  @override
  WebhookBatchDuration rebuild(
    void Function(WebhookBatchDurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WebhookBatchDurationBuilder toBuilder() =>
      WebhookBatchDurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookBatchDuration &&
        unit == other.unit &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WebhookBatchDurationBuilder
    implements Builder<WebhookBatchDuration, WebhookBatchDurationBuilder> {
  _$WebhookBatchDuration? _$v;

  WebhookBatchDurationUnitEnum? _unit;
  WebhookBatchDurationUnitEnum? get unit => _$this._unit;
  set unit(WebhookBatchDurationUnitEnum? unit) => _$this._unit = unit;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  WebhookBatchDurationBuilder() {
    WebhookBatchDuration._defaults(this);
  }

  WebhookBatchDurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unit = $v.unit;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookBatchDuration other) {
    _$v = other as _$WebhookBatchDuration;
  }

  @override
  void update(void Function(WebhookBatchDurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookBatchDuration build() => _build();

  _$WebhookBatchDuration _build() {
    final _$result =
        _$v ??
        _$WebhookBatchDuration._(
          unit: BuiltValueNullFieldError.checkNotNull(
            unit,
            r'WebhookBatchDuration',
            'unit',
          ),
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'WebhookBatchDuration',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

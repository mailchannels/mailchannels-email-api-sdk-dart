// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suppression_entry_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SuppressionEntryResponseSource_Enum
_$suppressionEntryResponseSourceEnum_api =
    const SuppressionEntryResponseSource_Enum._('api');
const SuppressionEntryResponseSource_Enum
_$suppressionEntryResponseSourceEnum_unsubscribeLink =
    const SuppressionEntryResponseSource_Enum._('unsubscribeLink');
const SuppressionEntryResponseSource_Enum
_$suppressionEntryResponseSourceEnum_listUnsubscribe =
    const SuppressionEntryResponseSource_Enum._('listUnsubscribe');
const SuppressionEntryResponseSource_Enum
_$suppressionEntryResponseSourceEnum_hardBounce =
    const SuppressionEntryResponseSource_Enum._('hardBounce');
const SuppressionEntryResponseSource_Enum
_$suppressionEntryResponseSourceEnum_spamComplaint =
    const SuppressionEntryResponseSource_Enum._('spamComplaint');

SuppressionEntryResponseSource_Enum _$suppressionEntryResponseSourceEnumValueOf(
  String name,
) {
  switch (name) {
    case 'api':
      return _$suppressionEntryResponseSourceEnum_api;
    case 'unsubscribeLink':
      return _$suppressionEntryResponseSourceEnum_unsubscribeLink;
    case 'listUnsubscribe':
      return _$suppressionEntryResponseSourceEnum_listUnsubscribe;
    case 'hardBounce':
      return _$suppressionEntryResponseSourceEnum_hardBounce;
    case 'spamComplaint':
      return _$suppressionEntryResponseSourceEnum_spamComplaint;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SuppressionEntryResponseSource_Enum>
_$suppressionEntryResponseSourceEnumValues =
    BuiltSet<SuppressionEntryResponseSource_Enum>(
      const <SuppressionEntryResponseSource_Enum>[
        _$suppressionEntryResponseSourceEnum_api,
        _$suppressionEntryResponseSourceEnum_unsubscribeLink,
        _$suppressionEntryResponseSourceEnum_listUnsubscribe,
        _$suppressionEntryResponseSourceEnum_hardBounce,
        _$suppressionEntryResponseSourceEnum_spamComplaint,
      ],
    );

const SuppressionEntryResponseSuppressionTypesEnum
_$suppressionEntryResponseSuppressionTypesEnum_transactional =
    const SuppressionEntryResponseSuppressionTypesEnum._('transactional');
const SuppressionEntryResponseSuppressionTypesEnum
_$suppressionEntryResponseSuppressionTypesEnum_nonTransactional =
    const SuppressionEntryResponseSuppressionTypesEnum._('nonTransactional');

SuppressionEntryResponseSuppressionTypesEnum
_$suppressionEntryResponseSuppressionTypesEnumValueOf(String name) {
  switch (name) {
    case 'transactional':
      return _$suppressionEntryResponseSuppressionTypesEnum_transactional;
    case 'nonTransactional':
      return _$suppressionEntryResponseSuppressionTypesEnum_nonTransactional;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SuppressionEntryResponseSuppressionTypesEnum>
_$suppressionEntryResponseSuppressionTypesEnumValues =
    BuiltSet<SuppressionEntryResponseSuppressionTypesEnum>(
      const <SuppressionEntryResponseSuppressionTypesEnum>[
        _$suppressionEntryResponseSuppressionTypesEnum_transactional,
        _$suppressionEntryResponseSuppressionTypesEnum_nonTransactional,
      ],
    );

Serializer<SuppressionEntryResponseSource_Enum>
_$suppressionEntryResponseSourceEnumSerializer =
    _$SuppressionEntryResponseSource_EnumSerializer();
Serializer<SuppressionEntryResponseSuppressionTypesEnum>
_$suppressionEntryResponseSuppressionTypesEnumSerializer =
    _$SuppressionEntryResponseSuppressionTypesEnumSerializer();

class _$SuppressionEntryResponseSource_EnumSerializer
    implements PrimitiveSerializer<SuppressionEntryResponseSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'api': 'api',
    'unsubscribeLink': 'unsubscribe_link',
    'listUnsubscribe': 'list_unsubscribe',
    'hardBounce': 'hard_bounce',
    'spamComplaint': 'spam_complaint',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'api': 'api',
    'unsubscribe_link': 'unsubscribeLink',
    'list_unsubscribe': 'listUnsubscribe',
    'hard_bounce': 'hardBounce',
    'spam_complaint': 'spamComplaint',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SuppressionEntryResponseSource_Enum,
  ];
  @override
  final String wireName = 'SuppressionEntryResponseSource_Enum';

  @override
  Object serialize(
    Serializers serializers,
    SuppressionEntryResponseSource_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SuppressionEntryResponseSource_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SuppressionEntryResponseSource_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SuppressionEntryResponseSuppressionTypesEnumSerializer
    implements
        PrimitiveSerializer<SuppressionEntryResponseSuppressionTypesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'transactional': 'transactional',
    'nonTransactional': 'non-transactional',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'transactional': 'transactional',
    'non-transactional': 'nonTransactional',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SuppressionEntryResponseSuppressionTypesEnum,
  ];
  @override
  final String wireName = 'SuppressionEntryResponseSuppressionTypesEnum';

  @override
  Object serialize(
    Serializers serializers,
    SuppressionEntryResponseSuppressionTypesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SuppressionEntryResponseSuppressionTypesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SuppressionEntryResponseSuppressionTypesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SuppressionEntryResponse extends SuppressionEntryResponse {
  @override
  final DateTime? createdAt;
  @override
  final String? notes;
  @override
  final String recipient;
  @override
  final String? sender;
  @override
  final SuppressionEntryResponseSource_Enum? source_;
  @override
  final BuiltList<SuppressionEntryResponseSuppressionTypesEnum>?
  suppressionTypes;

  factory _$SuppressionEntryResponse([
    void Function(SuppressionEntryResponseBuilder)? updates,
  ]) => (SuppressionEntryResponseBuilder()..update(updates))._build();

  _$SuppressionEntryResponse._({
    this.createdAt,
    this.notes,
    required this.recipient,
    this.sender,
    this.source_,
    this.suppressionTypes,
  }) : super._();
  @override
  SuppressionEntryResponse rebuild(
    void Function(SuppressionEntryResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SuppressionEntryResponseBuilder toBuilder() =>
      SuppressionEntryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuppressionEntryResponse &&
        createdAt == other.createdAt &&
        notes == other.notes &&
        recipient == other.recipient &&
        sender == other.sender &&
        source_ == other.source_ &&
        suppressionTypes == other.suppressionTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, recipient.hashCode);
    _$hash = $jc(_$hash, sender.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, suppressionTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SuppressionEntryResponseBuilder
    implements
        Builder<SuppressionEntryResponse, SuppressionEntryResponseBuilder> {
  _$SuppressionEntryResponse? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  String? _recipient;
  String? get recipient => _$this._recipient;
  set recipient(String? recipient) => _$this._recipient = recipient;

  String? _sender;
  String? get sender => _$this._sender;
  set sender(String? sender) => _$this._sender = sender;

  SuppressionEntryResponseSource_Enum? _source_;
  SuppressionEntryResponseSource_Enum? get source_ => _$this._source_;
  set source_(SuppressionEntryResponseSource_Enum? source_) =>
      _$this._source_ = source_;

  ListBuilder<SuppressionEntryResponseSuppressionTypesEnum>? _suppressionTypes;
  ListBuilder<SuppressionEntryResponseSuppressionTypesEnum>
  get suppressionTypes => _$this._suppressionTypes ??=
      ListBuilder<SuppressionEntryResponseSuppressionTypesEnum>();
  set suppressionTypes(
    ListBuilder<SuppressionEntryResponseSuppressionTypesEnum>? suppressionTypes,
  ) => _$this._suppressionTypes = suppressionTypes;

  SuppressionEntryResponseBuilder() {
    SuppressionEntryResponse._defaults(this);
  }

  SuppressionEntryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _notes = $v.notes;
      _recipient = $v.recipient;
      _sender = $v.sender;
      _source_ = $v.source_;
      _suppressionTypes = $v.suppressionTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuppressionEntryResponse other) {
    _$v = other as _$SuppressionEntryResponse;
  }

  @override
  void update(void Function(SuppressionEntryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuppressionEntryResponse build() => _build();

  _$SuppressionEntryResponse _build() {
    _$SuppressionEntryResponse _$result;
    try {
      _$result =
          _$v ??
          _$SuppressionEntryResponse._(
            createdAt: createdAt,
            notes: notes,
            recipient: BuiltValueNullFieldError.checkNotNull(
              recipient,
              r'SuppressionEntryResponse',
              'recipient',
            ),
            sender: sender,
            source_: source_,
            suppressionTypes: _suppressionTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suppressionTypes';
        _suppressionTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SuppressionEntryResponse',
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

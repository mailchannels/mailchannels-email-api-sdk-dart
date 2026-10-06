// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suppression_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SuppressionEntrySuppressionTypesEnum
_$suppressionEntrySuppressionTypesEnum_transactional =
    const SuppressionEntrySuppressionTypesEnum._('transactional');
const SuppressionEntrySuppressionTypesEnum
_$suppressionEntrySuppressionTypesEnum_nonTransactional =
    const SuppressionEntrySuppressionTypesEnum._('nonTransactional');

SuppressionEntrySuppressionTypesEnum
_$suppressionEntrySuppressionTypesEnumValueOf(String name) {
  switch (name) {
    case 'transactional':
      return _$suppressionEntrySuppressionTypesEnum_transactional;
    case 'nonTransactional':
      return _$suppressionEntrySuppressionTypesEnum_nonTransactional;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SuppressionEntrySuppressionTypesEnum>
_$suppressionEntrySuppressionTypesEnumValues =
    BuiltSet<SuppressionEntrySuppressionTypesEnum>(
      const <SuppressionEntrySuppressionTypesEnum>[
        _$suppressionEntrySuppressionTypesEnum_transactional,
        _$suppressionEntrySuppressionTypesEnum_nonTransactional,
      ],
    );

Serializer<SuppressionEntrySuppressionTypesEnum>
_$suppressionEntrySuppressionTypesEnumSerializer =
    _$SuppressionEntrySuppressionTypesEnumSerializer();

class _$SuppressionEntrySuppressionTypesEnumSerializer
    implements PrimitiveSerializer<SuppressionEntrySuppressionTypesEnum> {
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
    SuppressionEntrySuppressionTypesEnum,
  ];
  @override
  final String wireName = 'SuppressionEntrySuppressionTypesEnum';

  @override
  Object serialize(
    Serializers serializers,
    SuppressionEntrySuppressionTypesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SuppressionEntrySuppressionTypesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SuppressionEntrySuppressionTypesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SuppressionEntry extends SuppressionEntry {
  @override
  final String? notes;
  @override
  final String recipient;
  @override
  final BuiltList<SuppressionEntrySuppressionTypesEnum>? suppressionTypes;

  factory _$SuppressionEntry([
    void Function(SuppressionEntryBuilder)? updates,
  ]) => (SuppressionEntryBuilder()..update(updates))._build();

  _$SuppressionEntry._({
    this.notes,
    required this.recipient,
    this.suppressionTypes,
  }) : super._();
  @override
  SuppressionEntry rebuild(void Function(SuppressionEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuppressionEntryBuilder toBuilder() =>
      SuppressionEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuppressionEntry &&
        notes == other.notes &&
        recipient == other.recipient &&
        suppressionTypes == other.suppressionTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, recipient.hashCode);
    _$hash = $jc(_$hash, suppressionTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SuppressionEntryBuilder
    implements Builder<SuppressionEntry, SuppressionEntryBuilder> {
  _$SuppressionEntry? _$v;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  String? _recipient;
  String? get recipient => _$this._recipient;
  set recipient(String? recipient) => _$this._recipient = recipient;

  ListBuilder<SuppressionEntrySuppressionTypesEnum>? _suppressionTypes;
  ListBuilder<SuppressionEntrySuppressionTypesEnum> get suppressionTypes =>
      _$this._suppressionTypes ??=
          ListBuilder<SuppressionEntrySuppressionTypesEnum>();
  set suppressionTypes(
    ListBuilder<SuppressionEntrySuppressionTypesEnum>? suppressionTypes,
  ) => _$this._suppressionTypes = suppressionTypes;

  SuppressionEntryBuilder() {
    SuppressionEntry._defaults(this);
  }

  SuppressionEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notes = $v.notes;
      _recipient = $v.recipient;
      _suppressionTypes = $v.suppressionTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuppressionEntry other) {
    _$v = other as _$SuppressionEntry;
  }

  @override
  void update(void Function(SuppressionEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuppressionEntry build() => _build();

  _$SuppressionEntry _build() {
    _$SuppressionEntry _$result;
    try {
      _$result =
          _$v ??
          _$SuppressionEntry._(
            notes: notes,
            recipient: BuiltValueNullFieldError.checkNotNull(
              recipient,
              r'SuppressionEntry',
              'recipient',
            ),
            suppressionTypes: _suppressionTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suppressionTypes';
        _suppressionTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SuppressionEntry',
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

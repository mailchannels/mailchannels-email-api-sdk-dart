// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suppression_list_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SuppressionListInput extends SuppressionListInput {
  @override
  final bool? addToSubAccounts;
  @override
  final BuiltList<SuppressionEntry> suppressionEntries;

  factory _$SuppressionListInput([
    void Function(SuppressionListInputBuilder)? updates,
  ]) => (SuppressionListInputBuilder()..update(updates))._build();

  _$SuppressionListInput._({
    this.addToSubAccounts,
    required this.suppressionEntries,
  }) : super._();
  @override
  SuppressionListInput rebuild(
    void Function(SuppressionListInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SuppressionListInputBuilder toBuilder() =>
      SuppressionListInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuppressionListInput &&
        addToSubAccounts == other.addToSubAccounts &&
        suppressionEntries == other.suppressionEntries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addToSubAccounts.hashCode);
    _$hash = $jc(_$hash, suppressionEntries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SuppressionListInputBuilder
    implements Builder<SuppressionListInput, SuppressionListInputBuilder> {
  _$SuppressionListInput? _$v;

  bool? _addToSubAccounts;
  bool? get addToSubAccounts => _$this._addToSubAccounts;
  set addToSubAccounts(bool? addToSubAccounts) =>
      _$this._addToSubAccounts = addToSubAccounts;

  ListBuilder<SuppressionEntry>? _suppressionEntries;
  ListBuilder<SuppressionEntry> get suppressionEntries =>
      _$this._suppressionEntries ??= ListBuilder<SuppressionEntry>();
  set suppressionEntries(ListBuilder<SuppressionEntry>? suppressionEntries) =>
      _$this._suppressionEntries = suppressionEntries;

  SuppressionListInputBuilder() {
    SuppressionListInput._defaults(this);
  }

  SuppressionListInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addToSubAccounts = $v.addToSubAccounts;
      _suppressionEntries = $v.suppressionEntries.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuppressionListInput other) {
    _$v = other as _$SuppressionListInput;
  }

  @override
  void update(void Function(SuppressionListInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuppressionListInput build() => _build();

  _$SuppressionListInput _build() {
    _$SuppressionListInput _$result;
    try {
      _$result =
          _$v ??
          _$SuppressionListInput._(
            addToSubAccounts: addToSubAccounts,
            suppressionEntries: suppressionEntries.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suppressionEntries';
        suppressionEntries.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SuppressionListInput',
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

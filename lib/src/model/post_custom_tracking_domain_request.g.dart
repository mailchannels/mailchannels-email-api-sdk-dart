// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_custom_tracking_domain_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostCustomTrackingDomainRequestScopeEnum
_$postCustomTrackingDomainRequestScopeEnum_click =
    const PostCustomTrackingDomainRequestScopeEnum._('click');
const PostCustomTrackingDomainRequestScopeEnum
_$postCustomTrackingDomainRequestScopeEnum_open =
    const PostCustomTrackingDomainRequestScopeEnum._('open');
const PostCustomTrackingDomainRequestScopeEnum
_$postCustomTrackingDomainRequestScopeEnum_unsubscribe =
    const PostCustomTrackingDomainRequestScopeEnum._('unsubscribe');

PostCustomTrackingDomainRequestScopeEnum
_$postCustomTrackingDomainRequestScopeEnumValueOf(String name) {
  switch (name) {
    case 'click':
      return _$postCustomTrackingDomainRequestScopeEnum_click;
    case 'open':
      return _$postCustomTrackingDomainRequestScopeEnum_open;
    case 'unsubscribe':
      return _$postCustomTrackingDomainRequestScopeEnum_unsubscribe;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PostCustomTrackingDomainRequestScopeEnum>
_$postCustomTrackingDomainRequestScopeEnumValues =
    BuiltSet<PostCustomTrackingDomainRequestScopeEnum>(
      const <PostCustomTrackingDomainRequestScopeEnum>[
        _$postCustomTrackingDomainRequestScopeEnum_click,
        _$postCustomTrackingDomainRequestScopeEnum_open,
        _$postCustomTrackingDomainRequestScopeEnum_unsubscribe,
      ],
    );

Serializer<PostCustomTrackingDomainRequestScopeEnum>
_$postCustomTrackingDomainRequestScopeEnumSerializer =
    _$PostCustomTrackingDomainRequestScopeEnumSerializer();

class _$PostCustomTrackingDomainRequestScopeEnumSerializer
    implements PrimitiveSerializer<PostCustomTrackingDomainRequestScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'click': 'click',
    'open': 'open',
    'unsubscribe': 'unsubscribe',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'click': 'click',
    'open': 'open',
    'unsubscribe': 'unsubscribe',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PostCustomTrackingDomainRequestScopeEnum,
  ];
  @override
  final String wireName = 'PostCustomTrackingDomainRequestScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PostCustomTrackingDomainRequestScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PostCustomTrackingDomainRequestScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PostCustomTrackingDomainRequestScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PostCustomTrackingDomainRequest
    extends PostCustomTrackingDomainRequest {
  @override
  final String hostname;
  @override
  final String name;
  @override
  final PostCustomTrackingDomainRequestScopeEnum scope;

  factory _$PostCustomTrackingDomainRequest([
    void Function(PostCustomTrackingDomainRequestBuilder)? updates,
  ]) => (PostCustomTrackingDomainRequestBuilder()..update(updates))._build();

  _$PostCustomTrackingDomainRequest._({
    required this.hostname,
    required this.name,
    required this.scope,
  }) : super._();
  @override
  PostCustomTrackingDomainRequest rebuild(
    void Function(PostCustomTrackingDomainRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PostCustomTrackingDomainRequestBuilder toBuilder() =>
      PostCustomTrackingDomainRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostCustomTrackingDomainRequest &&
        hostname == other.hostname &&
        name == other.name &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostname.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PostCustomTrackingDomainRequestBuilder
    implements
        Builder<
          PostCustomTrackingDomainRequest,
          PostCustomTrackingDomainRequestBuilder
        > {
  _$PostCustomTrackingDomainRequest? _$v;

  String? _hostname;
  String? get hostname => _$this._hostname;
  set hostname(String? hostname) => _$this._hostname = hostname;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostCustomTrackingDomainRequestScopeEnum? _scope;
  PostCustomTrackingDomainRequestScopeEnum? get scope => _$this._scope;
  set scope(PostCustomTrackingDomainRequestScopeEnum? scope) =>
      _$this._scope = scope;

  PostCustomTrackingDomainRequestBuilder() {
    PostCustomTrackingDomainRequest._defaults(this);
  }

  PostCustomTrackingDomainRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostname = $v.hostname;
      _name = $v.name;
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostCustomTrackingDomainRequest other) {
    _$v = other as _$PostCustomTrackingDomainRequest;
  }

  @override
  void update(void Function(PostCustomTrackingDomainRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostCustomTrackingDomainRequest build() => _build();

  _$PostCustomTrackingDomainRequest _build() {
    final _$result =
        _$v ??
        _$PostCustomTrackingDomainRequest._(
          hostname: BuiltValueNullFieldError.checkNotNull(
            hostname,
            r'PostCustomTrackingDomainRequest',
            'hostname',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'PostCustomTrackingDomainRequest',
            'name',
          ),
          scope: BuiltValueNullFieldError.checkNotNull(
            scope,
            r'PostCustomTrackingDomainRequest',
            'scope',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

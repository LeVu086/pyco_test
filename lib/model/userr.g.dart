// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Userr> _$userrSerializer = new _$UserrSerializer();

class _$UserrSerializer implements StructuredSerializer<Userr> {
  @override
  final Iterable<Type> types = const [Userr, _$Userr];
  @override
  final String wireName = 'Userr';

  @override
  Iterable<Object> serialize(Serializers serializers, Userr object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(UserInfo)));
    }
    if (object.seed != null) {
      result
        ..add('seed')
        ..add(serializers.serialize(object.seed,
            specifiedType: const FullType(String)));
    }
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Userr deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserrBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserInfo)) as UserInfo);
          break;
        case 'seed':
          result.seed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Userr extends Userr {
  @override
  final UserInfo user;
  @override
  final String seed;
  @override
  final String version;

  factory _$Userr([void Function(UserrBuilder) updates]) =>
      (new UserrBuilder()..update(updates)).build();

  _$Userr._({this.user, this.seed, this.version}) : super._();

  @override
  Userr rebuild(void Function(UserrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserrBuilder toBuilder() => new UserrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Userr &&
        user == other.user &&
        seed == other.seed &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, user.hashCode), seed.hashCode), version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Userr')
          ..add('user', user)
          ..add('seed', seed)
          ..add('version', version))
        .toString();
  }
}

class UserrBuilder implements Builder<Userr, UserrBuilder> {
  _$Userr _$v;

  UserInfoBuilder _user;
  UserInfoBuilder get user => _$this._user ??= new UserInfoBuilder();
  set user(UserInfoBuilder user) => _$this._user = user;

  String _seed;
  String get seed => _$this._seed;
  set seed(String seed) => _$this._seed = seed;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  UserrBuilder();

  UserrBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _seed = _$v.seed;
      _version = _$v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Userr other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Userr;
  }

  @override
  void update(void Function(UserrBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Userr build() {
    _$Userr _$result;
    try {
      _$result = _$v ??
          new _$Userr._(user: _user?.build(), seed: seed, version: version);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Userr', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

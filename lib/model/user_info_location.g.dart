// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserInfoLocation> _$userInfoLocationSerializer =
    new _$UserInfoLocationSerializer();

class _$UserInfoLocationSerializer
    implements StructuredSerializer<UserInfoLocation> {
  @override
  final Iterable<Type> types = const [UserInfoLocation, _$UserInfoLocation];
  @override
  final String wireName = 'UserInfoLocation';

  @override
  Iterable<Object> serialize(Serializers serializers, UserInfoLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.street != null) {
      result
        ..add('street')
        ..add(serializers.serialize(object.street,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.zip != null) {
      result
        ..add('zip')
        ..add(serializers.serialize(object.zip,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserInfoLocation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserInfoLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserInfoLocation extends UserInfoLocation {
  @override
  final String street;
  @override
  final String city;
  @override
  final String state;
  @override
  final String zip;

  factory _$UserInfoLocation(
          [void Function(UserInfoLocationBuilder) updates]) =>
      (new UserInfoLocationBuilder()..update(updates)).build();

  _$UserInfoLocation._({this.street, this.city, this.state, this.zip})
      : super._();

  @override
  UserInfoLocation rebuild(void Function(UserInfoLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoLocationBuilder toBuilder() =>
      new UserInfoLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoLocation &&
        street == other.street &&
        city == other.city &&
        state == other.state &&
        zip == other.zip;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, street.hashCode), city.hashCode), state.hashCode),
        zip.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserInfoLocation')
          ..add('street', street)
          ..add('city', city)
          ..add('state', state)
          ..add('zip', zip))
        .toString();
  }
}

class UserInfoLocationBuilder
    implements Builder<UserInfoLocation, UserInfoLocationBuilder> {
  _$UserInfoLocation _$v;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  UserInfoLocationBuilder();

  UserInfoLocationBuilder get _$this {
    if (_$v != null) {
      _street = _$v.street;
      _city = _$v.city;
      _state = _$v.state;
      _zip = _$v.zip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserInfoLocation;
  }

  @override
  void update(void Function(UserInfoLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserInfoLocation build() {
    final _$result = _$v ??
        new _$UserInfoLocation._(
            street: street, city: city, state: state, zip: zip);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

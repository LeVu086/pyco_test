// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserInfo> _$userInfoSerializer = new _$UserInfoSerializer();

class _$UserInfoSerializer implements StructuredSerializer<UserInfo> {
  @override
  final Iterable<Type> types = const [UserInfo, _$UserInfo];
  @override
  final String wireName = 'UserInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, UserInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(UserInfoName)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(UserInfoLocation)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.salt != null) {
      result
        ..add('salt')
        ..add(serializers.serialize(object.salt,
            specifiedType: const FullType(String)));
    }
    if (object.md5 != null) {
      result
        ..add('md5')
        ..add(serializers.serialize(object.md5,
            specifiedType: const FullType(String)));
    }
    if (object.sha1 != null) {
      result
        ..add('sha1')
        ..add(serializers.serialize(object.sha1,
            specifiedType: const FullType(String)));
    }
    if (object.sha256 != null) {
      result
        ..add('sha256')
        ..add(serializers.serialize(object.sha256,
            specifiedType: const FullType(String)));
    }
    if (object.registered != null) {
      result
        ..add('registered')
        ..add(serializers.serialize(object.registered,
            specifiedType: const FullType(String)));
    }
    if (object.dob != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(object.dob,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.cell != null) {
      result
        ..add('cell')
        ..add(serializers.serialize(object.cell,
            specifiedType: const FullType(String)));
    }
    if (object.ssn != null) {
      result
        ..add('SSN')
        ..add(serializers.serialize(object.ssn,
            specifiedType: const FullType(String)));
    }
    if (object.pictureOffline != null) {
      result
        ..add('pictureOffline')
        ..add(serializers.serialize(object.pictureOffline,
            specifiedType: const FullType(String)));
    }
    if (object.picture != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(object.picture,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserInfoName)) as UserInfoName);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UserInfoLocation))
              as UserInfoLocation);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'salt':
          result.salt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'md5':
          result.md5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha1':
          result.sha1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha256':
          result.sha256 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'registered':
          result.registered = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cell':
          result.cell = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'SSN':
          result.ssn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pictureOffline':
          result.pictureOffline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserInfo extends UserInfo {
  @override
  final String gender;
  @override
  final UserInfoName name;
  @override
  final UserInfoLocation location;
  @override
  final String email;
  @override
  final String username;
  @override
  final String password;
  @override
  final String salt;
  @override
  final String md5;
  @override
  final String sha1;
  @override
  final String sha256;
  @override
  final String registered;
  @override
  final String dob;
  @override
  final String phone;
  @override
  final String cell;
  @override
  final String ssn;
  @override
  final String pictureOffline;
  @override
  final String picture;

  factory _$UserInfo([void Function(UserInfoBuilder) updates]) =>
      (new UserInfoBuilder()..update(updates)).build();

  _$UserInfo._(
      {this.gender,
      this.name,
      this.location,
      this.email,
      this.username,
      this.password,
      this.salt,
      this.md5,
      this.sha1,
      this.sha256,
      this.registered,
      this.dob,
      this.phone,
      this.cell,
      this.ssn,
      this.pictureOffline,
      this.picture})
      : super._();

  @override
  UserInfo rebuild(void Function(UserInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoBuilder toBuilder() => new UserInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfo &&
        gender == other.gender &&
        name == other.name &&
        location == other.location &&
        email == other.email &&
        username == other.username &&
        password == other.password &&
        salt == other.salt &&
        md5 == other.md5 &&
        sha1 == other.sha1 &&
        sha256 == other.sha256 &&
        registered == other.registered &&
        dob == other.dob &&
        phone == other.phone &&
        cell == other.cell &&
        ssn == other.ssn &&
        pictureOffline == other.pictureOffline &&
        picture == other.picture;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        gender
                                                                            .hashCode),
                                                                    name
                                                                        .hashCode),
                                                                location
                                                                    .hashCode),
                                                            email.hashCode),
                                                        username.hashCode),
                                                    password.hashCode),
                                                salt.hashCode),
                                            md5.hashCode),
                                        sha1.hashCode),
                                    sha256.hashCode),
                                registered.hashCode),
                            dob.hashCode),
                        phone.hashCode),
                    cell.hashCode),
                ssn.hashCode),
            pictureOffline.hashCode),
        picture.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserInfo')
          ..add('gender', gender)
          ..add('name', name)
          ..add('location', location)
          ..add('email', email)
          ..add('username', username)
          ..add('password', password)
          ..add('salt', salt)
          ..add('md5', md5)
          ..add('sha1', sha1)
          ..add('sha256', sha256)
          ..add('registered', registered)
          ..add('dob', dob)
          ..add('phone', phone)
          ..add('cell', cell)
          ..add('ssn', ssn)
          ..add('pictureOffline', pictureOffline)
          ..add('picture', picture))
        .toString();
  }
}

class UserInfoBuilder implements Builder<UserInfo, UserInfoBuilder> {
  _$UserInfo _$v;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  UserInfoNameBuilder _name;
  UserInfoNameBuilder get name => _$this._name ??= new UserInfoNameBuilder();
  set name(UserInfoNameBuilder name) => _$this._name = name;

  UserInfoLocationBuilder _location;
  UserInfoLocationBuilder get location =>
      _$this._location ??= new UserInfoLocationBuilder();
  set location(UserInfoLocationBuilder location) => _$this._location = location;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _salt;
  String get salt => _$this._salt;
  set salt(String salt) => _$this._salt = salt;

  String _md5;
  String get md5 => _$this._md5;
  set md5(String md5) => _$this._md5 = md5;

  String _sha1;
  String get sha1 => _$this._sha1;
  set sha1(String sha1) => _$this._sha1 = sha1;

  String _sha256;
  String get sha256 => _$this._sha256;
  set sha256(String sha256) => _$this._sha256 = sha256;

  String _registered;
  String get registered => _$this._registered;
  set registered(String registered) => _$this._registered = registered;

  String _dob;
  String get dob => _$this._dob;
  set dob(String dob) => _$this._dob = dob;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _cell;
  String get cell => _$this._cell;
  set cell(String cell) => _$this._cell = cell;

  String _ssn;
  String get ssn => _$this._ssn;
  set ssn(String ssn) => _$this._ssn = ssn;

  String _pictureOffline;
  String get pictureOffline => _$this._pictureOffline;
  set pictureOffline(String pictureOffline) =>
      _$this._pictureOffline = pictureOffline;

  String _picture;
  String get picture => _$this._picture;
  set picture(String picture) => _$this._picture = picture;

  UserInfoBuilder();

  UserInfoBuilder get _$this {
    if (_$v != null) {
      _gender = _$v.gender;
      _name = _$v.name?.toBuilder();
      _location = _$v.location?.toBuilder();
      _email = _$v.email;
      _username = _$v.username;
      _password = _$v.password;
      _salt = _$v.salt;
      _md5 = _$v.md5;
      _sha1 = _$v.sha1;
      _sha256 = _$v.sha256;
      _registered = _$v.registered;
      _dob = _$v.dob;
      _phone = _$v.phone;
      _cell = _$v.cell;
      _ssn = _$v.ssn;
      _pictureOffline = _$v.pictureOffline;
      _picture = _$v.picture;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserInfo;
  }

  @override
  void update(void Function(UserInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserInfo build() {
    _$UserInfo _$result;
    try {
      _$result = _$v ??
          new _$UserInfo._(
              gender: gender,
              name: _name?.build(),
              location: _location?.build(),
              email: email,
              username: username,
              password: password,
              salt: salt,
              md5: md5,
              sha1: sha1,
              sha256: sha256,
              registered: registered,
              dob: dob,
              phone: phone,
              cell: cell,
              ssn: ssn,
              pictureOffline: pictureOffline,
              picture: picture);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

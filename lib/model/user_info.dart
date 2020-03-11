import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'user_info_name.dart';
import 'user_info_location.dart';

part 'user_info.g.dart';

abstract class UserInfo implements Built<UserInfo, UserInfoBuilder>{

  @nullable
  @BuiltValueField(wireName: 'gender')
  String get gender;

  @nullable
  @BuiltValueField(wireName: 'name')
  UserInfoName get name;

  @nullable
  @BuiltValueField(wireName: 'location')
  UserInfoLocation get location;

  @nullable
  @BuiltValueField(wireName: 'email')
  String get email;

  @nullable
  @BuiltValueField(wireName: 'username')
  String get username;

  @nullable
  @BuiltValueField(wireName: 'password')
  String get password;

  @nullable
  @BuiltValueField(wireName: 'salt')
  String get salt;

  @nullable
  @BuiltValueField(wireName: 'md5')
  String get md5;

  @nullable
  @BuiltValueField(wireName: 'sha1')
  String get sha1;

  @nullable
  @BuiltValueField(wireName: 'sha256')
  String get sha256;

  @nullable
  @BuiltValueField(wireName: 'registered')
  String get registered;

  @nullable
  @BuiltValueField(wireName: 'dob')
  String get dob;

  @nullable
  @BuiltValueField(wireName: 'phone')
  String get phone;

  @nullable
  @BuiltValueField(wireName: 'cell')
  String get cell;

  @nullable
  @BuiltValueField(wireName: 'SSN')
  String get ssn;

  @nullable
  @BuiltValueField(wireName: 'pictureOffline')
  String get pictureOffline;

  @nullable
  @BuiltValueField(wireName: 'picture')
  String get picture;

  UserInfo._();
  factory UserInfo([updates(UserInfoBuilder builder)]) = _$UserInfo;
  static Serializer<UserInfo> get serializer => _$userInfoSerializer;

  String getInsertSqlString([String base64 = '']){
    return "INSERT INTO User("
    +"gender"
    +", name_title"
    +", name_first"
    +", name_last"
    +", location_street"
    +", location_city"
    +", location_state"
    +", location_zip"
    +", email"
    +", username"
    +", password"
    +", salt"
    +", md5"
    +", sha1"
    +", sha256"
    +", registered"
    +", dob"
    +", phone"
    +", cell"
    +", SSN"
    +", pictureOffline"
    +", picture) VALUES("
    +"'${this.gender}'"
    +", '${this.name.title}'"
    +", '${this.name.first}'"
    +", '${this.name.last}'"
    +", '${this.location.street}'"
    +", '${this.location.city}'"
    +", '${this.location.state}'"
    +", '${this.location.zip}'"
    +", '${this.email}'"
    +", '${this.username}'"
    +", '${this.password}'"
    +", '${this.salt}'"
    +", '${this.md5}'"
    +", '${this.sha1}'"
    +", '${this.sha256}'"
    +", '${this.registered}'"
    +", '${this.dob}'"
    +", '${this.phone}'"
    +", '${this.cell}'"
    +", '${this.ssn}'"
    +", '$base64'"
    +", '${this.picture}')";
  }

  static UserInfo fromMap(Map f){
    return UserInfo((b) => b
      ..gender = f['gender']
      ..name = UserInfoName((n) => n
        ..title = f['name_title']
        ..first = f['name_first']
        ..last = f['name_last']
      ).toBuilder()
      ..location = UserInfoLocation((p) => p
        ..street = f['location_street']
        ..city = f['location_city']
        ..state = f['location_state']
        ..zip = f['location_zip']
      ).toBuilder()
      ..email = f['email']
      ..username = f['username']
      ..password = f['password']
      ..salt = f['salt']
      ..md5 = f['md5']
      ..sha1 = f['sha1']
      ..sha256 = f['sha256']
      ..registered = f['registered']
      ..dob = f['dob']
      ..phone = f['phone']
      ..cell = f['cell']
      ..ssn = f['SSN']
      ..pictureOffline = f['pictureOffline']
      ..picture = f['picture']
    );
  }
}
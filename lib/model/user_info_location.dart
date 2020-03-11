

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info_location.g.dart';

abstract class UserInfoLocation implements Built<UserInfoLocation, UserInfoLocationBuilder>{

  @nullable
  @BuiltValueField(wireName: 'street')
  String get street;

  @nullable
  @BuiltValueField(wireName: 'city')
  String get city;

  @nullable
  @BuiltValueField(wireName: 'state')
  String get state;

  @nullable
  @BuiltValueField(wireName: 'zip')
  String get zip;

  UserInfoLocation._();
  factory UserInfoLocation([updates(UserInfoLocationBuilder builder)]) = _$UserInfoLocation;
  static Serializer<UserInfoLocation> get serializer => _$userInfoLocationSerializer;
}
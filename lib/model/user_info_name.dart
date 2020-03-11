

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info_name.g.dart';

abstract class UserInfoName implements Built<UserInfoName, UserInfoNameBuilder>{

  @nullable
  @BuiltValueField(wireName: 'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: 'first')
  String get first;

  @nullable
  @BuiltValueField(wireName: 'last')
  String get last;

  UserInfoName._();
  factory UserInfoName([updates(UserInfoNameBuilder builder)]) = _$UserInfoName;
  static Serializer<UserInfoName> get serializer => _$userInfoNameSerializer;
}
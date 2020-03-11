
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pyco_test_vl/model/user_info.dart';

part 'userr.g.dart';

abstract class Userr implements Built<Userr, UserrBuilder> {

  @nullable
  @BuiltValueField(wireName: 'user')
  UserInfo get user;

  @nullable
  @BuiltValueField(wireName: 'seed')
  String get seed;

  @nullable
  @BuiltValueField(wireName: 'version')
  String get version;

  Userr._();

  factory Userr([updates(UserrBuilder builder)]) = _$Userr;

  static Serializer<Userr> get serializer => _$userrSerializer;
}

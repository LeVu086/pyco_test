library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:pyco_test_vl/model/result.dart';
import 'package:pyco_test_vl/model/user_info.dart';
import 'package:pyco_test_vl/model/user_info_location.dart';
import 'package:pyco_test_vl/model/user_info_name.dart';
import 'package:pyco_test_vl/model/userr.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Result,
  Userr,
  UserInfo,
  UserInfoLocation,
  UserInfoName,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

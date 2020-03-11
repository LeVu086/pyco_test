

import 'package:pyco_test_vl/model/user_info.dart';

abstract class UserRepo {

  void dispose();

  Future<UserInfo> getRandomUser();
}
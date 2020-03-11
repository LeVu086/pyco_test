

import 'package:pyco_test_vl/data/remote/http_handler.dart';
import 'package:pyco_test_vl/data/remote/rest_api.dart';
import 'package:pyco_test_vl/data/remote/user/user_api.dart';
import 'package:pyco_test_vl/data/reposity/user_repos.dart';
import 'package:pyco_test_vl/model/result.dart';
import 'package:pyco_test_vl/model/user_info.dart';

class UserRepoImpl extends UserRepo with HttpHandler {
  UserAPI _userAPI;

  UserRepoImpl(){
    _create();
  }

  void _create() async {
    _userAPI = await RestAPI.provideUserAPI();
  }

  @override
  void dispose() {
    _userAPI.dispose();
  }

  @override
  Future<UserInfo> getRandomUser() async {
    Result result = await call<Result>(_userAPI.getRandomUser());
    return List.of(result.results).first.user;
  }
  
}
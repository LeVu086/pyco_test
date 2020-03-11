
import 'package:pyco_test_vl/data/reposity/user_repos.dart';
import 'package:pyco_test_vl/data/reposity_impl/user_repos_impl.dart';
import 'package:pyco_test_vl/model/user_info.dart';

class UserService {
  UserRepo _userRepo;

  UserService() {
    _userRepo = UserRepoImpl();
  }

  void dispose() {
    _userRepo.dispose();
  }

  Future<UserInfo> getRandomUser() async => await _userRepo.getRandomUser();
}

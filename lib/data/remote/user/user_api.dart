library user_api;

import 'package:chopper/chopper.dart';
import 'package:pyco_test_vl/model/result.dart';

part 'user_api.chopper.dart';

@ChopperApi(baseUrl: 'api/')
abstract class UserAPI extends ChopperService {

  static UserAPI create(ChopperClient client) {
    return _$UserAPI(client);
  }

  @Get(path: '0.4')
  Future<Response<Result>> getRandomUser();
}
import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:pyco_test_vl/data/remote/user/user_api.dart';
import 'built_value_converter.dart';

class RestAPI {
  static const String PRO_URL = "https://randomuser.me/";
  static const String DEV_URL = "https://randomuser.me/";
  
  static String rootURL() {
    return isInDevMode ? DEV_URL : PRO_URL;
  }

  static Future<UserAPI> provideUserAPI() async {
    ChopperClient client = await _createClient();
    return UserAPI.create(client);
  }

  static Future<ChopperClient> _createClient() async {
    final client = ChopperClient(
      baseUrl: isInDevMode ? DEV_URL : PRO_URL,
      services: [],
      converter: BuiltValueConverter(),
    );
    return client;
  }

  static bool get isInDevMode {
    bool inDevMode = false;
    assert(inDevMode = true);
    return inDevMode;
  }
}

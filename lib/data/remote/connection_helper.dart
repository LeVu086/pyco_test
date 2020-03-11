import 'package:connectivity/connectivity.dart';

Future<bool> checkInternetAvailble() async {
  try {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      // I am connected to a mobile network.
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a wifi network.
      return true;
    } else return false;
  } catch (_) {
    return false;
  }
}
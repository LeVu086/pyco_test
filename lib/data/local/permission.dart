import 'package:permission_handler/permission_handler.dart';

Future<bool> checkStoragePermission() async {
  var grand = await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);
  if(grand != PermissionStatus.granted){
    var result = await PermissionHandler().requestPermissions([PermissionGroup.storage]);
    print('permission storage: $result');
    if (result[PermissionGroup.contacts] == PermissionStatus.granted) {
      // permission was granted
      return true;
    }else{


      return false;
    }
  }else return true;
}
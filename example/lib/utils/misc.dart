import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> requestPermission() async {
  if ((await Permission.location.request()).isGranted) {
    return true;
  } else {
    toast('需要定位权限!');
    return false;
  }
}

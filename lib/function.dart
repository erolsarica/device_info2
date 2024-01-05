import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

Future<(String model, String version)> getDeviceInformation() async {
  String model = "";
  String version = "";
  final deviceInfoPlugin = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
    model = androidInfo.model;
    version = androidInfo.version.release;
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
    model = iosInfo.utsname.machine;
    version = iosInfo.systemVersion;
  }
  return (model, version);
}
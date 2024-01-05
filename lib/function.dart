import 'dart:io';

import 'package:apple_product_name/apple_product_name.dart';
import 'package:device_info_plus/device_info_plus.dart';

String model = "";
  String version = "";
  final deviceInfoPlugin = DeviceInfoPlugin();

Future<(String model, String version)> getDeviceInformation() async {
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
    model = androidInfo.model;
    version = androidInfo.version.release;
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
    model = iosInfo.utsname.productName;
    version = iosInfo.systemVersion;
  }
  return (model, version);
}
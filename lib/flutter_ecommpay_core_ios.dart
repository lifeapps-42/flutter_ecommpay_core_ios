// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'package:flutter/services.dart';
import 'package:flutter_ecommpay_core_platform_interface/flutter_ecommpay_core_platform_interface_platform_interface.dart';

class FlutterEcommpayCoreIos extends FlutterEcommpayCorePlatform {
  static const _methodChannel = MethodChannel('flutter_ecommpay_core_ios');

  static void registerWith() {
    FlutterEcommpayCorePlatform.instance = FlutterEcommpayCoreIos();
  }

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await _methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

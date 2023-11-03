import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_ecommpay_core_ios_platform_interface.dart';

/// An implementation of [FlutterEcommpayCoreIosPlatform] that uses method channels.
class MethodChannelFlutterEcommpayCoreIos extends FlutterEcommpayCoreIosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_ecommpay_core_ios');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

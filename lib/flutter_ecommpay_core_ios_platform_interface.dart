import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ecommpay_core_ios_method_channel.dart';

abstract class FlutterEcommpayCoreIosPlatform extends PlatformInterface {
  /// Constructs a FlutterEcommpayCoreIosPlatform.
  FlutterEcommpayCoreIosPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterEcommpayCoreIosPlatform _instance = MethodChannelFlutterEcommpayCoreIos();

  /// The default instance of [FlutterEcommpayCoreIosPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterEcommpayCoreIos].
  static FlutterEcommpayCoreIosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterEcommpayCoreIosPlatform] when
  /// they register themselves.
  static set instance(FlutterEcommpayCoreIosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

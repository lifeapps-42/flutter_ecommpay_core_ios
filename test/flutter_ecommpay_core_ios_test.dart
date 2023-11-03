import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ecommpay_core_ios/flutter_ecommpay_core_ios.dart';
import 'package:flutter_ecommpay_core_ios/flutter_ecommpay_core_ios_platform_interface.dart';
import 'package:flutter_ecommpay_core_ios/flutter_ecommpay_core_ios_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterEcommpayCoreIosPlatform
    with MockPlatformInterfaceMixin
    implements FlutterEcommpayCoreIosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterEcommpayCoreIosPlatform initialPlatform = FlutterEcommpayCoreIosPlatform.instance;

  test('$MethodChannelFlutterEcommpayCoreIos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterEcommpayCoreIos>());
  });

  test('getPlatformVersion', () async {
    FlutterEcommpayCoreIos flutterEcommpayCoreIosPlugin = FlutterEcommpayCoreIos();
    MockFlutterEcommpayCoreIosPlatform fakePlatform = MockFlutterEcommpayCoreIosPlatform();
    FlutterEcommpayCoreIosPlatform.instance = fakePlatform;

    expect(await flutterEcommpayCoreIosPlugin.getPlatformVersion(), '42');
  });
}

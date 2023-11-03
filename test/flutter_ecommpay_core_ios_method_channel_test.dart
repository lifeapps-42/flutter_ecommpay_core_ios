import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ecommpay_core_ios/flutter_ecommpay_core_ios_method_channel.dart';

void main() {
  MethodChannelFlutterEcommpayCoreIos platform = MethodChannelFlutterEcommpayCoreIos();
  const MethodChannel channel = MethodChannel('flutter_ecommpay_core_ios');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

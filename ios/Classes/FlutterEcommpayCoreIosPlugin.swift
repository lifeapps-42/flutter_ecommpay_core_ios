import Flutter
import UIKit
import MsdkCore

public class FlutterEcommpayCoreIosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_ecommpay_core_ios", binaryMessenger: registrar.messenger())
    let instance = FlutterEcommpayCoreIosPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      
      switch call.method {
      case "getPlatformVersion":
          result("iOS " + UIDevice.current.systemVersion)
      default:
          result(FlutterMethodNotImplemented)
      }
  }
    
    
}

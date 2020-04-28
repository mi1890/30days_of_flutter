import Flutter
import UIKit

public class SwiftFluttersimplepluginPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "fluttersimpleplugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFluttersimplepluginPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

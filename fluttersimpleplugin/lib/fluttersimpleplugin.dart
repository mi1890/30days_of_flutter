import 'dart:async';

import 'package:flutter/services.dart';

class Fluttersimpleplugin {
  static const MethodChannel _channel =
      const MethodChannel('fluttersimpleplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

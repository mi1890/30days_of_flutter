import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersimpleplugin/fluttersimpleplugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('fluttersimpleplugin');

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
    expect(await Fluttersimpleplugin.platformVersion, '42');
  });
}

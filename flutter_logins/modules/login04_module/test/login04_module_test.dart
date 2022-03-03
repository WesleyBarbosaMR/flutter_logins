import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login04_module/login04_module.dart';

void main() {
  const MethodChannel channel = MethodChannel('login04_module');

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
    expect(await Login04Module.platformVersion, '42');
  });
}

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login05_module/login05_module.dart';

void main() {
  const MethodChannel channel = MethodChannel('login05_module');

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
    expect(await Login05Module.platformVersion, '42');
  });
}

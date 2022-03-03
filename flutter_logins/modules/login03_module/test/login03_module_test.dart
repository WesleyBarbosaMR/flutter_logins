import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login03_module/login03_module.dart';

void main() {
  const MethodChannel channel = MethodChannel('login03_module');

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
    expect(await Login03Module.platformVersion, '42');
  });
}

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hp_scroll_animation/hp_scroll_animation.dart';

void main() {
  const MethodChannel channel = MethodChannel('hp_scroll_animation');

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
    expect(await HpScrollAnimation.platformVersion, '42');
  });
}

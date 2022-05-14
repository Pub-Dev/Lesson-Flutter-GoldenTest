import 'dart:ui';

import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:pubdev_flutter_goldentest/pages/home_page.dart';

void main() {
  testGoldens('Home Page - Golden Test', (tester) async {
    //arrange
    await loadAppFonts();
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        const Device(name: 'naga_phone', size: Size(400, 600), textScale: 1.5),
      ])
      ..addScenario(
        name: 'Testing the Home Page',
        widget: const HomePage(),
      );

    //act
    await tester.pumpDeviceBuilder(builder);

    //assert
    await screenMatchesGolden(tester, 'Home Page');
  });
}

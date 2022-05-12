import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:pubdev_flutter_goldentest/components/logo_widget.dart';

void main() {
  testGoldens('Logo Widget - Golden Test', (tester) async {
    //arrange
    await loadAppFonts();
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.iphone11,
        Device.phone,
      ])
      ..addScenario(
        name: 'test with flutter parameter',
        widget: const Logo(color: LogoColor.flutter),
      )
      ..addScenario(
        name: 'test with c# parameter',
        widget: const Logo(color: LogoColor.csharp),
      );

    //act
    await tester.pumpDeviceBuilder(builder);

    //assert
    await screenMatchesGolden(tester, 'logo_widget');
  });
}

import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:pubdev_flutter_goldentest/components/logo_widget.dart';

void main() {
  testGoldens('Logo Widget - Golden Test', (tester) async {
    //arrange
    await loadAppFonts();
    final builder = GoldenBuilder.column()
      ..addScenario(
        'test with flutter parameter',
        const Logo(color: LogoColor.flutter),
      )
      ..addScenario(
        'test with c# parameter',
        const Logo(color: LogoColor.csharp),
      );

    //act
    await tester.pumpWidgetBuilder(builder.build());

    //assert
    await screenMatchesGolden(tester, 'logo_widget');
  });
}

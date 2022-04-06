import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  
  testWidgets('Tap decrement button 15 times with 1 sec delay', (WidgetTester tester) async {

    //arrange
    app.main();
    await tester.pumpAndSettle();
    final Finder button = find.byIcon(Icons.remove);
    //act
    for (var i=0; i > -15; i--) {
      await tester.tap(button);
      await Future.delayed(const Duration(seconds: 1));
    }
    await tester.pumpAndSettle();

    //assert
    expect(find.text('-15'), findsOneWidget);
  });
} 
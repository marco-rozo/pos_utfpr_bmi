import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:utfpr_bmi/bmi_controller.dart';
import 'package:utfpr_bmi/main.dart';

void main() {
  testWidgets('Test logic of insert data page', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => BMIController(),
      child: const MyApp(),
    ));

    expect(find.text("Please, enter the weight!"), findsNothing);
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    expect(find.text("Please, enter the weight!"), findsOneWidget);

    await tester.enterText(find.byType(TextFormField).first, "55.0");
    await tester.enterText(find.byType(TextFormField).last, "1.79");
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    expect(find.byType(ElevatedButton), findsNothing);
  });
}

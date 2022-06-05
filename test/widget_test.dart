import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vk_postman/presentation/widgets/search_widget.dart';

void main() {
  testWidgets('Проверка Search Widget', (WidgetTester tester) async {
    final controller = TextEditingController();
    await tester.pumpWidget(
        MaterialApp(home: Scaffold(body: SearchWidget(controller))));
    final textFinder = find.text('Поиск');
    final textFieldFinder = find.byType(TextField);
    expect(textFinder, findsOneWidget);
    expect(textFieldFinder, findsWidgets);
    await tester.enterText(textFieldFinder, 'Некий текст');
    print(controller.text);
  });
}

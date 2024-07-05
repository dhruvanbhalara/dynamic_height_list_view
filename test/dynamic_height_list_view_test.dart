import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_height_list_view/dynamic_height_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('DynamicHeightListView renders items', (WidgetTester tester) async {
    final items = List.generate(10, (index) => 'Item $index');

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: DynamicHeightListView<String>(
          items: items,
          itemBuilder: (context, item) => Text(item),
        ),
      ),
    ));

    for (var item in items) {
      expect(find.text(item), findsOneWidget);
    }
  });
}

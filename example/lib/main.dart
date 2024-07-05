import 'package:dynamic_height_list_view/dynamic_height_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic Height List View Example'),
        ),
        body: DynamicHeightListView<String>(
          items: List.generate(10, (index) => 'Item $index'),
          itemPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          itemBuilder: (context, item) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(item),
            ),
          ),
        ),
      ),
    );
  }
}

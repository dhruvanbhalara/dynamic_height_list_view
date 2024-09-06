import 'package:example/grid_view_example.dart';
import 'package:example/list_view_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic Height List/Grid View Example'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("LIST VIEW"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewExample()),);
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text("GRID VIEW"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridViewExample()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

// ListView(
// children: [
// DynamicHeightGridView(
// physics: const NeverScrollableScrollPhysics(),
// shrinkWrap: true,
// itemCount: 12,
// crossAxisCount: 3,
// crossAxisSpacing: 10,
// mainAxisSpacing: 10,
// builder: (context, index) {
// return Container(
// height: 200,
// color: Colors.blue,
// child: Center(child: Text('Item $index')),
// );
// }
// ),
// DynamicHeightListView<String>(
// items: List.generate(10, (index) => 'Item $index'),
// itemPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
// itemBuilder: (context, item) => Card(
// child: Padding(
// padding: const EdgeInsets.all(16.0),
// child: Text(item),
// ),
// ),
// ),
//
// ],
// ),

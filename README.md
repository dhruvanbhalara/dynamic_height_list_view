# Dynamic Height List View

[![pub package](https://img.shields.io/pub/v/dynamic_height_list_view.svg)](https://pub.dev/packages/dynamic_height_list_view)

A Flutter package to display a list of items with dynamic heights in a scrollable view.

## Features

- Horizontal and vertical scrolling
- Customizable padding and physics
- Supports dynamic item heights

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  dynamic_height_list_view: ^0.0.1
```

## Screenshot

![Screenshot](https://github.com/YudizAndroidSunny/dynamic_height_list_view/blob/main/example/example_ss_01.png?raw=true)


## Usage

```
import 'package:dynamic_height_list_view/dynamic_height_list_view.dart';

DynamicHeightListView<String>(
  items: List.generate(10, (index) => 'Item $index'),
  itemBuilder: (context, item) => Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(item),
    ),
  ),
);
```

## Example

```
import 'package:flutter/material.dart';
import 'package:dynamic_height_list_view/dynamic_height_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Height List View Example'),
        ),
        body: DynamicHeightListView<String>(
          items: List.generate(10, (index) => 'Item $index'),
          itemBuilder: (context, item) => Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(item),
            ),
          ),
        ),
      ),
    );
  }
}
```

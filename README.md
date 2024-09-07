# Dynamic Height List View
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

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

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/YudizAndroidSunny"><img src="https://avatars.githubusercontent.com/u/137782850?v=4?s=100" width="100px;" alt="YudizAndroidSunny"/><br /><sub><b>YudizAndroidSunny</b></sub></a><br /><a href="https://github.com/YudizAndroidSunny/dynamic_height_list_view/commits?author=YudizAndroidSunny" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
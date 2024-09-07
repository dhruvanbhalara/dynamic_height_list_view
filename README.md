[![pub package](https://img.shields.io/pub/v/dynamic_height_list_view.svg)](https://pub.dev/packages/dynamic_height_list_view)
[![package publisher](https://img.shields.io/pub/publisher/dynamic_height_list_view.svg)](https://pub.dev/packages/dynamic_height_list_view/publisher)
![GitHub code size](https://img.shields.io/github/languages/code-size/YudizAndroidSunny/dynamic_height_list_view)

A Flutter package that provides dynamic height grid and list views with customizable layouts and flexible scroll behaviors. The package includes both DynamicHeightGridView and DynamicHeightListView to handle grids and lists where each item's height can vary.

## Demo

| <img src="https://raw.githubusercontent.com/YudizAndroidSunny/dynamic_height_list_view/version_0.0.2/assets/gif/dynamic_height_list_view.gif" width="240"/> | <img src="https://raw.githubusercontent.com/YudizAndroidSunny/dynamic_height_list_view/version_0.0.2/assets/gif/dynamic_height_grid_view.gif" width="240"/>
|:---------------------------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------|          

## Features

- <b>Dynamic Grid View:</b> Supports dynamic item heights with flexible row layouts.
- <b>Dynamic List View:</b> Allows dynamic item heights in both horizontal and vertical scroll views.
- <b>Customizable Padding:</b> You can specify padding for both the entire view and individual items.
- <b>Flexible Scroll Behavior:</b> Use custom scroll physics and controllers for smooth, customizable scrolling.


## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  dynamic_height_list_view: ^0.0.2
```

Then, run:

```yaml
flutter pub get
```

## Usage

### 1. DynamicHeightListView Example

This example demonstrates how to use `DynamicHeightListView` to display a list with dynamic item heights. You can customize the scroll direction and padding for each item.

```dart
import 'package:dynamic_height_list_view/dynamic_height_view.dart';
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

  final List<Color> colors = List.generate(100, (index) => Color((index * 0xFFFFFF ~/ 100) << 0).withOpacity(1.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Height List View'),
      ),
      body: DynamicHeightListView<int>(
        items: List.generate(10, (index) => index),
        itemPadding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        itemBuilder: (context, item) => Card(
          child: Container(
            height: 40,
            width: 100,
            color: colors[item],
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
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/YudizAndroidVarshil"><img src="https://avatars.githubusercontent.com/u/165645464?v=4?s=100" width="100px;" alt="YudizAndroidVarshil"/><br /><sub><b>YudizAndroidVarshil</b></sub></a><br /><a href="https://github.com/YudizAndroidSunny/dynamic_height_list_view/commits?author=YudizAndroidVarshil" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
=======
### 2. DynamicHeightGridView Example

Here’s how to use the `DynamicHeightGridView` to display a grid with varying item heights and customizable spacing between rows and columns.

```dart
import 'package:dynamic_height_list_view/dynamic_height_view.dart';
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  GridViewExample({super.key});

  final List<Color> colors = List.generate(100, (index) => Color((index * 0xFFFFFF ~/ 100) << 0).withOpacity(1.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Height Grid View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DynamicHeightGridView(
          shrinkWrap: true,
          itemCount: 100,
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          builder: (context, index) {
            return Container(
              height: 200,
              color: colors[index],
            );
          },
        ),
      ),
    );
  }
}
```

## API

### `DynamicHeightListView`

| Property        | Type                                              | Description                                              |
| --------------- | ------------------------------------------------- | -------------------------------------------------------- |
| `items`         | `List<T>`                                         | The list of items to display.                            |
| `itemBuilder`   | `Widget Function(BuildContext context, T item)`   | Function that builds the widgets for each list item.      |
| `itemPadding`   | `EdgeInsets`                                      | Padding for each item.                                   |
| `scrollDirection`| `ScrollDirection`                               | Direction of the scroll (horizontal or vertical).         |
| `controller`    | `ScrollController?`                               | Controller for the scroll view.                          |
| `physics`       | `ScrollPhysics?`                                  | Scroll physics for the view (e.g., `BouncingScrollPhysics`).|

### `DynamicHeightGridView`

| Property           | Type                                              | Description                                              |
| ------------------ | ------------------------------------------------- | -------------------------------------------------------- |
| `builder`          | `IndexedWidgetBuilder`                            | Function that builds the grid items.                     |
| `itemCount`        | `int`                                             | Number of items in the grid.                             |
| `crossAxisCount`   | `int`                                             | Number of columns in the grid.                           |
| `crossAxisSpacing` | `double`                                          | Spacing between columns.                                 |
| `mainAxisSpacing`  | `double`                                          | Spacing between rows.                                    |
| `controller`       | `ScrollController?`                               | Controller for the grid's scroll view.                   |
| `shrinkWrap`       | `bool`                                            | If true, grid will take up only as much space as needed. |

## Contributions

Contributions are welcome! Please open an issue or submit a pull request on the [GitHub repository](https://github.com/YudizAndroidSunny/dynamic_height_list_view) if you would like to contribute to **Dynamic Height List/Grdi View**.

## Support

If you encounter any issues or have questions, feel free to open an issue on [GitHub](https://github.com/YudizAndroidSunny/dynamic_height_list_view/issues).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Visitors Count 
<img align="left" src = "https://profile-counter.glitch.me/dynamic_height_list_view/count.svg" alt ="Loading">

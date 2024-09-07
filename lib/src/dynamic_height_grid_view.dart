import 'package:flutter/material.dart';

/// A GridView that adjusts dynamically to the height of its children
///
/// Works similarly to [GridView.count], with flexible row heights.
class DynamicHeightGridView extends StatelessWidget {
  const DynamicHeightGridView({
    Key? key,
    required this.builder,
    required this.itemCount,
    required this.crossAxisCount,
    this.crossAxisSpacing = 8,
    this.mainAxisSpacing = 8,
    this.rowCrossAxisAlignment = CrossAxisAlignment.start,
    this.controller,
    this.shrinkWrap = false,
    this.physics,
  }) : super(key: key);

  final IndexedWidgetBuilder builder;
  final int itemCount;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final CrossAxisAlignment rowCrossAxisAlignment;

  final ScrollPhysics? physics;
  final ScrollController? controller;
  final bool shrinkWrap;

  /// Calculate the number of rows needed for the grid
  int get columnLength => (itemCount / crossAxisCount).ceil();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      shrinkWrap: shrinkWrap,
      physics: physics,
      itemCount: columnLength, // Number of rows
      itemBuilder: (ctx, columnIndex) {
        return _GridRow(
          columnIndex: columnIndex,
          builder: builder,
          itemCount: itemCount,
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisSpacing: mainAxisSpacing,
          crossAxisAlignment: rowCrossAxisAlignment,
        );
      },
    );
  }
}

/// A Sliver version of DynamicHeightGridView for use with [CustomScrollView]
class SliverDynamicHeightGridView extends StatelessWidget {
  const SliverDynamicHeightGridView({
    Key? key,
    required this.builder,
    required this.itemCount,
    required this.crossAxisCount,
    this.crossAxisSpacing = 8,
    this.mainAxisSpacing = 8,
    this.rowCrossAxisAlignment = CrossAxisAlignment.start,
    this.controller,
  }) : super(key: key);

  final IndexedWidgetBuilder builder;
  final int itemCount;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final CrossAxisAlignment rowCrossAxisAlignment;
  final ScrollController? controller;

  /// Calculate the number of rows needed for the grid
  int get columnLength => (itemCount / crossAxisCount).ceil();

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (ctx, columnIndex) {
          return _GridRow(
            columnIndex: columnIndex,
            builder: builder,
            itemCount: itemCount,
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisAlignment: rowCrossAxisAlignment,
          );
        },
        childCount: columnLength, // Number of rows
      ),
    );
  }
}

/// Internal row widget that displays grid items
class _GridRow extends StatelessWidget {
  const _GridRow({
    Key? key,
    required this.columnIndex,
    required this.builder,
    required this.itemCount,
    required this.crossAxisCount,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
    required this.crossAxisAlignment,
  }) : super(key: key);

  final IndexedWidgetBuilder builder;
  final int itemCount;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final CrossAxisAlignment crossAxisAlignment;
  final int columnIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: (columnIndex == 0) ? 0 : mainAxisSpacing),
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        children: List.generate(
          crossAxisCount * 2 - 1, // Alternating between items and spacing
              (rowIndex) {
            // For spacing between columns
            if (rowIndex % 2 != 0) return SizedBox(width: crossAxisSpacing);

            final itemIndex = columnIndex * crossAxisCount + rowIndex ~/ 2;

            // If index exceeds itemCount, return empty space
            if (itemIndex >= itemCount) {
              return const Expanded(child: SizedBox());
            }

            // Display the grid item
            return Expanded(child: builder(context, itemIndex));
          },
        ),
      ),
    );
  }
}

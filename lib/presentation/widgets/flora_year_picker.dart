import 'dart:math';

import 'package:flutter/material.dart';

// We could use ListWheelScrollView covered by Container with gradient opacity,
// but it has some limitations, f.e. doesn't support snapping
class FloraYearPicker extends StatelessWidget {
  const FloraYearPicker({
    super.key,
    this.controller,
    required this.itemExtent,
    required this.visibleItemsCount,
    required this.minimumYear,
    required this.maximumYear,
    this.itemStyle,
    this.onSelectedYearChanged,
  }) : assert(visibleItemsCount % 2 != 0, 'visibleItemsCount must be odd');

  final ScrollController? controller;

  /// Size of each child in the main axis. Must  be positive
  final double itemExtent;

  /// Number of visible items. Must be odd
  final int visibleItemsCount;

  /// Minimum year for picking
  final int minimumYear;

  /// Maximum year of picking
  final int maximumYear;

  /// Base style of items
  final TextStyle? itemStyle;

  /// On optional listener that's called when the centered year changes.
  final ValueChanged<int>? onSelectedYearChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: visibleItemsCount * itemExtent,
      child: Stack(
        children: [
          _ItemIndicator(height: itemExtent),
          YearListView(
            controller: controller,
            itemExtent: itemExtent,
            minimumYear: minimumYear,
            maximumYear: maximumYear,
            itemStyle: itemStyle,
            onSelectedYearChanged: onSelectedYearChanged,
          ),
        ],
      ),
    );
  }
}

class YearListView extends StatefulWidget {
  const YearListView({
    super.key,
    this.controller,
    required this.itemExtent,
    required this.minimumYear,
    required this.maximumYear,
    this.itemStyle,
    this.onSelectedYearChanged,
  }) : _yearsCount = maximumYear - minimumYear + 1;

  final ScrollController? controller;

  final double itemExtent;
  final int minimumYear;
  final int maximumYear;

  final TextStyle? itemStyle;

  final ValueChanged<int>? onSelectedYearChanged;

  final int _yearsCount;

  @override
  State<YearListView> createState() => _YearListViewState();
}

class _YearListViewState extends State<YearListView> {
  late ScrollController _controller;
  int _lastReportedIndex = -1;
  late double _halfItemExtent;

  //Current scroll-position in pixel
  double _currentPixel = 0;

  @override
  void initState() {
    super.initState();

    _halfItemExtent = widget.itemExtent / 2;
    _controller = widget.controller ?? ScrollController();
    //an improvement: select a specified year
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.jumpTo(_controller.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraint) {
        final listPadding = _calculateListPadding(constraint);
        return NotificationListener<ScrollNotification>(
          onNotification: _onScrollNotification,
          child: ListView.builder(
            controller: _controller,
            padding: EdgeInsets.symmetric(vertical: max(0, listPadding)),
            itemCount: widget._yearsCount,
            itemBuilder: _itemBuilder,
            itemExtent: widget.itemExtent,
          ),
        );
      },
    );
  }

  bool _onScrollNotification(ScrollNotification scrollInfo) {
    if (scrollInfo.depth > 0) {
      return false;
    }

    if (scrollInfo is ScrollEndNotification) {
      double offset = _calcItemLocation(
        pixel: scrollInfo.metrics.pixels,
        itemSize: widget.itemExtent,
      );
      // snapping
      if ((scrollInfo.metrics.pixels - offset).abs() > 0.01) {
        _animateScroll(offset);
      }
    } else if (scrollInfo is ScrollUpdateNotification) {
      setState(() {
        _currentPixel = scrollInfo.metrics.pixels;
      });
    }

    return true;
  }

  double _calculateListPadding(BoxConstraints constraint) {
    return (constraint.maxHeight - widget.itemExtent) / 2;
  }

  double _calcItemLocation({required double pixel, required double itemSize}) {
    int itemIndex = ((pixel - _halfItemExtent) / itemSize).ceil();
    if (itemIndex < 0) {
      itemIndex = 0;
    } else if (itemIndex > widget._yearsCount - 1) {
      itemIndex = widget._yearsCount - 1;
    }

    if (itemIndex != _lastReportedIndex) {
      _lastReportedIndex = itemIndex;
      widget.onSelectedYearChanged?.call(
        _lastReportedIndex + widget.minimumYear,
      );
    }

    return itemIndex * itemSize;
  }

  void _animateScroll(double location) {
    Future.delayed(Duration.zero, () {
      _controller.animateTo(
        location,
        duration: const Duration(milliseconds: 10),
        curve: Curves.linear,
      );
    });
  }

  Widget? _itemBuilder(BuildContext context, int index) {
    double scale = _calculateScale(index);
    final child = Text(
      '${widget.minimumYear + index}',
      style: widget.itemStyle,
    );
    return SizedBox(
      height: widget.itemExtent,
      child: Align(
        child: scale >= .98
            ? child
            : Transform.scale(
                scale: scale,
                child: Opacity(opacity: _calculateOpacity(index), child: child),
              ),
      ),
    );
    // }
  }

  // Calculates scale transformation
  double _calculateScale(int index) {
    double intendedPixel = index * widget.itemExtent;
    double difference = intendedPixel - _currentPixel;

    return 1 - min(difference.abs() / 500, 0.5);
  }

  // Calculates item's opacity
  double _calculateOpacity(int index) {
    double intendedPixel = index * widget.itemExtent;
    double difference = intendedPixel - _currentPixel;

    return max((1 - difference.abs() / (widget.itemExtent * 2)), 0.2);
  }
}

class _ItemIndicator extends StatelessWidget {
  const _ItemIndicator({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xFFF2F2F2),
        ),
      ),
    );
  }
}

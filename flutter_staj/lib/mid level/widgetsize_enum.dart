import 'package:flutter/material.dart';

class WidgetSizeEnumView extends StatefulWidget {
  const WidgetSizeEnumView({super.key});

  @override
  State<WidgetSizeEnumView> createState() => _WidgetSizeEnumViewState();
}

class _WidgetSizeEnumViewState extends State<WidgetSizeEnumView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Colors.green,
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}

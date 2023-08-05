import 'package:flutter/material.dart';
import 'package:flutter_examples/basic/image_learn.dart';
import 'package:flutter_examples/basic/indicator_learn.dart';
import 'package:flutter_examples/basic/list_tile.dart';
import 'package:flutter_examples/demos/stack_demo.dart';

import 'custom_widget_learn.dart';

class PageLearnView extends StatefulWidget {
  const PageLearnView({super.key});

  @override
  State<PageLearnView> createState() => _PageLearnViewState();
}

class _PageLearnViewState extends State<PageLearnView> {
  final _pageController = PageController(viewportFraction: 0.7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_left)),
          FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_right)),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        children: [
          CustomWidgetLearn(),
          const IndicatorLearn(),
          const ListTileLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = const Duration(seconds: 1);
}

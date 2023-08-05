import 'package:flutter/material.dart';
import 'package:flutter_examples/basic/image_learn.dart';
import 'package:flutter_examples/basic/indicator_learn.dart';
import 'package:flutter_examples/basic/list_tile.dart';

import '../basic/appbar_learn.dart';
import '../basic/list_view.dart';
import '../basic/navigation_learn.dart';

class TabLearnView extends StatefulWidget {
  const TabLearnView({super.key});

  @override
  State<TabLearnView> createState() => _TabLearnViewState();
}

class _TabLearnViewState extends State<TabLearnView>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _tabController.animateTo(0);
        }),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              indicatorColor: Colors.white,
              labelColor: Colors.blueAccent,
              padding: EdgeInsets.zero,
              onTap: (int index) {},
              tabs: _MyTabViews.values
                  .map((e) => Tab(text: "${e.name}"))
                  .toList()),
        ),
        appBar: AppBar(),
        body: TabBarView(controller: _tabController, children: const [
          /*Image.network("https://picsum.photos/536/354"),
          Image.network("https://picsum.photos/200/300?grayscale")*/
          ListTileLearn(),
          AppbarLearnView(),
          IndicatorLearn(),
          ListLearnView(),
        ]),
      ),
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}

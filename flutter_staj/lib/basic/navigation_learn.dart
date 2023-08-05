import 'package:flutter/material.dart';

import 'list_tile.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) {
                  return const ListTileLearn();
                },
                fullscreenDialog: true,
                settings: const RouteSettings()),
          );
        },
      ),
    );
  }
}

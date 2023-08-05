import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});
  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int countValue = 0;
  void incrementValue() {
    setState(() {
      countValue = countValue + 1;
    });
  }

  void deincrementValue() {
    setState(() {
      countValue = countValue - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _incrementbutton(),
            _deincrementbutton(),
          ],
        ),
        body: Center(
          child: Text(
            countValue.toString(),
            style: Theme.of(context).textTheme.headline2,
          ),
        ));
  }

  FloatingActionButton _incrementbutton() {
    return FloatingActionButton(
      onPressed: () {
        incrementValue();
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementbutton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          deincrementValue();
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}

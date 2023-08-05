import 'package:flutter/material.dart';

class ListLearnView extends StatefulWidget {
  const ListLearnView({super.key});

  @override
  State<ListLearnView> createState() => _ListLearnViewState();
}

class _ListLearnViewState extends State<ListLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            FittedBox(
              child: Text(
                "Merhaba",
                style: Theme.of(context).textTheme.headline1,
                maxLines: 1,
              ),
            ),
            Container(color: Colors.yellow, height: 250),
            const Divider(),
            Container(
              color: const Color.fromARGB(255, 7, 30, 71),
              height: 250,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close))
          ],
        ));
  }
}

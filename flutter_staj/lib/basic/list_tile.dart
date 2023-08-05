import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageurl = "https://picsum.photos/200/300";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ListTile(
          title: Image.network(imageurl),
          onTap: () {},
          subtitle: const Text("How do you use to symbol"),
          leading: const Icon(Icons.money),
          trailing: const Icon(Icons.chevron_right),
        )
      ]),
    );
  }
}

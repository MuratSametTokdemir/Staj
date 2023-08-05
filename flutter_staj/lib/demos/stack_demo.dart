import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          flex: 6,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                bottom: _cardHeight / 2,
                child:
                    Image.network("https://picsum.photos/seed/picsum/200/300"),
              ),
              Positioned(
                height: _cardHeight, bottom: 0, width: _cardWidth,child: _cardCustom(),
              )
            ],
          ), ),
        const Spacer(flex: 4)
      ]));
  }
  Card _cardCustom() {
    return const Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}

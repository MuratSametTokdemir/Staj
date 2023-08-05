import 'package:flutter/material.dart';
import 'package:flutter_examples/basic/image_learn.dart';

class NotDemos extends StatelessWidget {
  const NotDemos({super.key});
  final _title = "Creat your account";
  final _login = "Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(),
        body: Padding(
          padding: PaddingItems.horizontalPadding,
          child: Column(children: [
            PngImage(Name: ImageItems().saulogo),
            _TitleWidget(title: _title),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  height: ButtonHeights.buttonNormalHeight,
                  child: Center(
                      child: Text(
                    _title,
                    style: Theme.of(context).textTheme.headline5,
                  )),
                )),
            TextButton(onPressed: () {}, child: Text(_login)),
            const SizedBox(height: 50),
          ]),
        ));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
          color: Color.fromARGB(255, 238, 240, 242),
          fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding =
      EdgeInsets.symmetric(horizontal: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

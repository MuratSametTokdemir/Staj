import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({super.key});
  final String title = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomButton(title: title),
              ),
            ),
          ],
        ));
  }
}

mixin ColorsUtility {
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

class CustomButton extends StatelessWidget with ColorsUtility {
  CustomButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: redColor, shape: const StadiumBorder()),
        onPressed: () {},
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: white, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}

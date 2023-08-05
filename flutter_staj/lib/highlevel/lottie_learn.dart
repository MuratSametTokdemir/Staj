import 'package:flutter/material.dart';
import 'package:flutter_examples/product/constant/duration_items.dart';
import 'package:flutter_examples/product/constant/lottie_items.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});
  @override
  State<LottieLearn> createState() => _LottieLearnState();
}
class _LottieLearnState extends State<LottieLearn> with TickerProviderStateMixin {
    late AnimationController controller;
    bool isLight = false;
    @override
  void initState() { super.initState();
    controller=AnimationController(vsync: this, duration:DurationItems.durationNormal());
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( actions: [
          InkWell( onTap: () {
              controller.animateTo(isLight ? 0.5 :1);
              isLight = !isLight;
            },
            child: Lottie.asset(
              LottieItems.themeChange.lottiePath,repeat: false,
              controller: controller 
              ))
              ],
      ),
      body:  LoadingLottie(),
    );}}
class LoadingLottie extends StatelessWidget {
  LoadingLottie({ super.key,
  });
  final _loadingLottie ="assets/lottie/loading_lottie1.json";
  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset(_loadingLottie));
  }
}
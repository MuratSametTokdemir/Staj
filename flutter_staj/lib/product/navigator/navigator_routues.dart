import 'package:flutter_examples/highlevel/lottie_learn.dart';
import 'package:flutter_examples/highlevel/navigator/navigate_home_detail.dart';
import 'package:flutter_examples/highlevel/navigator/navigate_home_view.dart';

class NavigatorRoutues{
  final items ={
    "/":(context) => const LottieLearn(),
    "/home":(context) => const NavigateHomeView(),
    "/homeDetail" : (context) => const NavigateHomeDetailView(),
  };
}
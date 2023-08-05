import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_examples/basic/statefullearn.dart';
import 'package:flutter_examples/demos/stack_demo.dart';
import 'package:flutter_examples/highlevel/lottie_learn.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Color.fromARGB(255, 33, 243, 47),
        elevation: 0,
      )),

      home:   const StatefulLearn(),
    );
  }
}

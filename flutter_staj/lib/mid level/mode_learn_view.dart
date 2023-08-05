import 'package:flutter/material.dart';
import 'package:flutter_examples/mid%20level/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  @override
  void initState() {
    super.initState();

    final user1 = PostModel()
      ..userId = 1
      ..body = "ayza";
    user1.body = "hello";
    final user2 = PostModel2(1, 2, "b", "a");
    user2.body = "a";
    final user3 = PostModel3(1, 4, "x", "k");

    final user4 = PostModel4(userId: 1, Id: 5, title: "title", body: "body");
    //user4.body="a"
    final user5 =
        PostModel5(userId: 7, Id: 3, title: "blueacent", body: "yellow");
    user5.UserId;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

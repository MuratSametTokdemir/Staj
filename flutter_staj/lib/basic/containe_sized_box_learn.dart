import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          SizedBox(
        width: 200,
        height: 200,
        child: Text("t" * 200),
          ),
          const SizedBox.shrink(),
           SizedBox.square(
            dimension: 50,
            child:Text("a"*50),
          )
        ],
      ),
    ); 
  }
}
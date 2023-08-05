import 'package:flutter/material.dart';
import 'package:flutter_examples/highlevel/reqrest_resource/viewModel/reqres_viewmodel.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({super.key});

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

class _ReqResViewState extends ReqresViewmodel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: isLoading ? const CircularProgressIndicator():null),
      body: ListView.builder(
        itemCount:resources.length, 
      itemBuilder: (BuildContext context, int index) {
        return Card(color:const Color.fromARGB(255, 31, 174, 231),child: Text(resources[index].name ?? ""));
      },
      ),
      );
    
  }
}
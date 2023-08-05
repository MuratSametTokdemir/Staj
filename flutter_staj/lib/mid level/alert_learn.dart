import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(  BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final respnse =await showDialog(
          context: context,
        
         builder: (context){
          return  const  _ImageZoomDialog();

        });
        
      },),
      appBar: AppBar(),

    );
  }
}

class _UpdateDialog extends StatelessWidget {
  const _UpdateDialog({
    super.key, required BuildContext context,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("version update!"),
      actions: [
        ElevatedButton(onPressed: () {
          Navigator.pop(context , true);
        }, child: const Text("update 2"),),
        TextButton(onPressed:() {
          Navigator.pop(context);
        }, 
        child: const Text("close"))
      ],
    );
  }
}

class Keys{
  static const versionUpdate = "Version Update";
}

class UpdateDialog extends AlertDialog{
   UpdateDialog({Key? key , required BuildContext context})
   :super(
  title:  const Text(Keys.versionUpdate),
      actions: [
        ElevatedButton(onPressed: () {
          Navigator.pop(context , true);
        }, child: const Text("update 2"),),
        TextButton(onPressed:() {
          Navigator.pop(context);
        }, 
        child: const Text("close"))],
  );}
class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    Key? key,
  }) : super(key: key);
  final String _url = 'https://picsum.photos/200';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          _url,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
    );
  }
}
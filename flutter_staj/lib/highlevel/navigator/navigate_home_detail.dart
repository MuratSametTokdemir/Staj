import 'package:flutter/material.dart';

class NavigateHomeDetailView extends StatefulWidget {
  const NavigateHomeDetailView({super.key, this.id});

  final String?  id; 

  @override
  State<NavigateHomeDetailView> createState() => _NavigateHomeDetailViewState();
}

class _NavigateHomeDetailViewState extends State<NavigateHomeDetailView> {
  late String _id;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _id = widget.id ?? " ";
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_id),
      ),
    );
  }
}
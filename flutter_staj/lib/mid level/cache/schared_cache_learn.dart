import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScharedLearn extends StatefulWidget {
  const ScharedLearn({super.key});

  @override
  State<ScharedLearn> createState() => _ScharedLearnState();
}

class _ScharedLearnState extends LoadingStateful<ScharedLearn> {
  int _currentValue = 0;

  void _onChangeValue(String value){
    final _value =int.tryParse(value);
    if(_value != null){
     setState(() {
        _currentValue = _value;
     });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_currentValue.toString()),
      actions: [isLoading? Center(child: CircularProgressIndicator(color: Theme.of(context).scaffoldBackgroundColor,),
      )
      :const SizedBox.shrink()],),
      floatingActionButton: FloatingActionButton(onPressed:( () async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setInt('counter', _currentValue);
      }), child: const Icon(Icons.save)),
      body:TextField(
        onChanged: (value){
          _onChangeValue(value);
        }
      )

    );
  }
}
//Generic
abstract class LoadingStateful<T extends StatefulWidget> extends State <T> {
  bool isLoading = false;

  void changeLoading(){
    setState(() {
      isLoading =!isLoading;
    });
  }
}
import 'package:flutter/material.dart';

class TextLearnWiew extends StatelessWidget{
   const TextLearnWiew({key}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(
          ("Stajda 4. gün " ),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.yellowAccent),//ProjectStyles sınıfına göre daha kullanışlı.
    )),
    );
  }}
/*class ProjectStyles{
  static TextStyle welcomestyle =const TextStyle(
    wordSpacing: 3,letterSpacing: 3, fontSize: 24,
          fontWeight: FontWeight.w600 ,decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic,color: Colors.greenAccent
  );
}*/
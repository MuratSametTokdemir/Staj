
void main (List <String> args){
   
  Iuser user = Turk();

  user.sayName();
  user=English();
  user.sayName();
}

abstract class Iuser{
  final String name;

  Iuser(this.name);
  void sayName();
}

class Turk implements Iuser{
  @override
  // TODO: implement name
  String get name => "Murat";

  @override
  void sayName() {
    print("merhaba hoşgeldiniz $name");
  }

}
class English implements Iuser{
  @override
  
  String get name => "Juan";

  @override
  void sayName() {
    print("welcome to my country $name");
  }

}



void main (List<String> args)
{

  final user= _User("avni" , age: null);

  if (user.age is int){
    if(user.age!<18){
      print("evet kucuk");
    }
  }



}


class _User{
  final String name;
  int? age;

  _User(this.name , {this.age});
}
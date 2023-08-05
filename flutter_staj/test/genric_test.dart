import 'package:flutter_examples/highlevel/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void Main(){
  setUp(() {});

  test("User calculate", () {
    final users = [
      GenericUser("vb" , "11" , 10),
      GenericUser("vb" , "11" , 10),
      GenericUser("vb" , "11" , 30),

    ];
    final result = UserManagement(AdminUser("mst","1",2,4)).calculateMoney(users);

    expect(result, 40);
  });
}

 void main(){

  var personelManeger=PersonelManeger();
  
  var personel = new Personel ("hakan", "  demirci " , 126);
  var personel1 = new Personel ("kemal", "  burçak " , 184);
  personelManeger.add(personel);
  personelManeger.add(personel1);
  duzen();


  var customerManeger = CustomerManeger();
  var customer = new Customer ("Engin", "  Altay " , 456);
  var customer1 = new Customer ("sadik", "  Altay " , 156);
  var customer2 = new Customer ("reyhan", "  narli " , 24);
  customerManeger.add(customer);
  customerManeger.add(customer1);
  customerManeger.add(customer2);
  
 }





class PersonelManeger
{

  void add(Personel personel){
    
    print("eklendi : " + personel.firstName + personel.lastName + personel.id_No.toString());
    
  }
  

  void update(){

  print("Güncellendi");

  }

  void delete(){
    print("silindi");
  }
}
class Personel {
  String firstName;
  String lastName;
  int id_No;
  


  //constructor
  Personel(
    this.firstName,
    this.lastName,
    this.id_No
  ) {
    this.firstName=firstName;
    this.lastName=lastName;
    this.id_No=id_No;
    
  }





}

class CustomerManeger
{

  void add(Customer customer){
    print("eklendi :" + customer.firstName +customer.lastName + customer.id_No.toString() );
  }

  void update(){

  print("Güncellendi");

  }

  void delete(){
    print("silindi");
  }


}

class Customer {
  String firstName;
  String lastName;
  int id_No;
  


  //constructor
  Customer(
    this.firstName,
    this.lastName,
    this.id_No
  ) {
    this.firstName=firstName;
    this.lastName=lastName;
    this.id_No=id_No;
    
  }


}

void duzen(){
  print("**********" *10);
  print("müşteri listesi");
}

void main(List<String>args){
final newProduct=Product.money;

calculateMoney();

}


void calculateMoney(){
  if((Product.money ?? 0)>5){
    print("5 tl daha eklendi");
    Product.incremantMoney(5);
    print(Product.money);
  }
}

class Product {
  static int? money =10;
  static const companyName = "ayzabank";
  static void incremantMoney(int newMoney){
    if (money != null){
      money =money! + newMoney;
    }
  }
  
}
void main(){
List<int> moneys =[100,110,120,130,140,150];
final List<int> newMoneys = [100,110,120,130,140,150];

print('musteri 1 parasi: ${moneys[0]}' );

moneys.sort();
moneys.add(15);
moneys.insert(3,450);
print(moneys);


newMoneys.add(60);
newMoneys.clear();

print(newMoneys);
newMoneys.reversed.toList();


print("---------------");
List<int> moneyCustomerNews = [100,30,40,80,3];
moneyCustomerNews.sort();
for(int i=0;i<moneyCustomerNews.length;i++){
  print('musteri parasi: ${moneyCustomerNews[i]}');
  if(moneyCustomerNews[i]>36){
    print("kredi hazir");

  }
  else if(moneyCustomerNews[i]>0){
    print("kredi veremeyiz ama bi bakalım belki müdür bir şeyler yapar");
  }else{
    print("by");
  }
}
print("----------------");

for(int i=moneyCustomerNews.length -1;i>=moneyCustomerNews.length;i--){
  print('musteri parasi: ${moneyCustomerNews[i]}');
  if(moneyCustomerNews[i]>36){
    print("kredi hazir");

  }
  else if(moneyCustomerNews[i]>0){
    print("kredi veremeyiz ama bi bakalim belki müdür bir şeyler yapar");
  }else{
    print("by");
  }
}









}
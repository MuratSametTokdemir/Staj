void main()
{

Map<String,int> users ={'ahmet':60,'süleyman':90};
//süleymanın ne kadar parası  var

print('ahmetin parasi ${users['ahmet']}');

for(var item in users.keys){
  print('${item} - ${users[item]}');
}
for(var i=0;i<users.length-1;i++){



  print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');

  print("**************************");

  final Map<String,List<int>> ayzabank = {
    'namik':[160,420,680]
  };
  ayzabank['leyla']=[650,980,810];
  ayzabank['eşref']=[50,10,30,20];

  for (var item in ayzabank.keys){
    //bankaya ait tüm elemanlar
    for(var money in ayzabank[item]!){
      //müşteri hesaplarını dolaşır
      if(money>=650){
        print ("kredin hazir");
        
      }
      else if(money<=60) {
        print("krediniz onaylanamdi");
        
      }
      else {
        print("kefil gerekiyor");
        break;
      }
    }
  }

  print("//////////////////////////");

  //banka müşterilerinin hesaplarındaki toplam parayı bul 
  for(var name in ayzabank.keys){
    //ayzabank[item]!-> musterilerin hesapları demek

    int result=0;
    //[name->item]!
    for(var money in ayzabank[name]!){
      result=result + money ;
    
      
    
     if(result>500){
      print("kredi teklifimizi dinlemek istermisiniz?");
      
      
      
    }
      else if(result<=500){
        print("ihtiyaç kredisi için başvurabilirsiniz");
      
      }
      
    }
      
    
    print("$name senin toplam paran -> $result");
  
    
  }
  

  















}















}
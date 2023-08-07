//müşteri bankaya gelir ve parasına göre yönlendirilir.

void main(){
int  newCustomerMoney=0;
const int bankingCost=5;
const int bankingCostGeneral=20;

if (newCustomerMoney > bankingCost){
    print("hosgeldiniz beyfendi");
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
}
else if (newCustomerMoney > 0)
{print("beyfendi lutfen sira aliniz");
}
else  {
    print("beyfendi kredinizi ödeyin");
}



//mağazalara örnek isimler verilir.
//örnek isimlere bekılır.
//5 harften küçük olanlar gösterilicek.


final String xyzCompany="xyz";
final String redblueCompany="redblue";
final String darkCompany= "dark";
final String mahverCompany= "mahver";
final String lostCompany ="lost";

String results = "";
if (xyzCompany.length<5){
    results = results + xyzCompany;
}
if (redblueCompany.length<5){
    results = results + redblueCompany;
}
if (darkCompany.length<5){
    results = results + darkCompany;
}
if (mahverCompany.length<5){
    results = results + mahverCompany;
}
if (lostCompany.length<5){
    results = results + lostCompany;
}
print(results);


//sınıf derecesine göre veli bilgilendirme
//1 ise bravo
//2 ise çok güzel
//3 ise başarılı
//diğer durumlarda daha çok çalışmalı
final int classDegree=6;
bool isSucces = false;
switch (classDegree){
    case 1: 
    print("bravo");
    isSucces=true;
    break;
    case 2:
    print( "çok güzel");
    isSucces=true;
    break;
    case 3:
    print("başarili");
    isSucces=true;
    break;
    default:
    print("basarisiz");
    isSucces=false;

    print("beyfendi cocugunuzun sonucu: $isSucces");




}







}
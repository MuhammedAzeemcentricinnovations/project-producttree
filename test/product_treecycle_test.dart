import 'package:product_treecycle/product_treecycle.dart';
import 'package:test/test.dart';




abstract class Product {
  Product(this.price, {this.weight, this.volume,  this.count});

  int price;
  int? weight;
  int? volume;
  int? count;
  late int totalPrice;

  void calculate();
}

class Pen extends Product {
  Pen({required price, required count}) : super(price,count: count);
  void computePenname() {
   ;
  }

  @override
  void calculate() {

    if (count!=null){
     totalPrice = price * count!;
      print("3 pen price is$totalPrice Rupeess");

    }
    
     
    
  }
}





  class Oil extends Product{
  Oil ({ required price,required volume}):super(price,volume: volume);
  
  @override
  void calculate() {
    if (volume!=null){
     totalPrice=price * volume!;
      print("10 liter oil price is $totalPrice Rs");
    }
  }
}



class Sugar extends Product{
  Sugar({ required price,required weight}):super(price,weight: weight);


  @override
  void calculate() {

    if (weight!=null){
     totalPrice=price * weight!;
      print(" 35 kg sugar price is $totalPrice Rs");
    }
        
  }}


void main() {
  final prctprice= Pen(price: 12, count: 3);
  final prctweight=Sugar(price: 35, weight: 23);
  final prctvolume=Oil(price: 105, volume: 50);


//   // prctprice.computePenname();

  prctvolume.calculate();
    prctprice.calculate();
      prctweight.calculate();
}

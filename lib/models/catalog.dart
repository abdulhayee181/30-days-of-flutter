
import 'package:flutter/cupertino.dart';

class CatalogModel {
  static  List<Item> items = [
    Item(id:1,name: "red", desc: "I phone 12",price: 999,colour:"i phone boht chnga hai",image: "https://freepngimg.com/thumb/samsung_mobile_phone/5-2-samsung-mobile-phone-png-hd.png"),
  ];
}

class Item {
  final  id;
  final   name;
  final  desc;
  final  price;
  final  colour;
  final  image;


  Item({ @required this.id, this.name, this.desc, this.price, this.colour, this.image});
   factory Item.fromMap(Map<String,dynamic>map){
    return Item( 
       id: map["id"],
       name: map["name"],
       desc: map["desc"],
       price: map["price"],
       colour: map["colour"],
       image: map["image"],);
   }
   toMap()=>{
     "id":id,
     "name":name,
     "desc":desc,
     "price":price,
     "colour":colour,
     "image":image,
   };
}

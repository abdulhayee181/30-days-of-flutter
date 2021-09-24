import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:hello_world/models/catalog.dart';
import 'package:hello_world/widgets/drawer.dart';
import 'package:hello_world/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 40;
  final String imageurl =
      "https://itchronicles.com/wp-content/uploads/2021/01/technology-impact-on-life-1024x566.jpg";
@override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async{
   final catalogjson = await rootBundle.loadString("assests/files/catalog.json");
  final decodedata = jsonDecode(catalogjson);
  var productData = decodedata ["products"];
   //rprint(productData);
  CatalogModel.items= List.from(productData).map<Item> ((item) => Item.fromMap(item)).toList();
  setState(() {});
  }
@override     
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("myapp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,), 
          itemBuilder: (context,index){
             final item = CatalogModel.items[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: GridTile(
                header: Container(
                  child: Text(item.name, 
                  style: TextStyle(color: Colors.white),),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),),
                child: Image.network(item.image),
                footer:  Container(
                  child: Text(item.price.toString(), 
                  style: TextStyle(color: Colors.white),),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),),
            )
            );
          },
          itemCount: CatalogModel.items.length,
        ) ,      ),
      drawer: MyDrawer()
    );
      }
}

class CatalogModels {
}

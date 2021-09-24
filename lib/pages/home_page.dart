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
        child: ListView.builder(
          itemCount:CatalogModel.items.length,
          itemBuilder: (context,index){
            return ItemWidget(item: CatalogModel.items[index],
            );
          }),
      ),
      drawer: MyDrawer()
    );
      }
}

class CatalogModels {
}

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
  print(productData);
  }
@override     
  Widget build(BuildContext context) {
    final dummylist = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("myapp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount:dummylist.length,
          itemBuilder: (context,index){
            return ItemWidget(item: dummylist[index],
            );
          }),
      ),
      drawer: MyDrawer()
    );
      }
}

class CatalogModels {
}

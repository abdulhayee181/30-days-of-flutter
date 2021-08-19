import 'package:flutter/material.dart';
import 'package:hello_world/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final item;

  const ItemWidget({@required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} pressed");
        },
        leading: Image.network(item.iamge),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.5,
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold),
      
      ),
    )
    );
  }
}

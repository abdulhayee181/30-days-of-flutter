import 'package:flutter/material.dart';
//import 'package:hello_world/main.dart';

class HomePage extends StatelessWidget {
  final int days = 40;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myapp"),
      ),
      body: Center(
        child: Container(
          child: Text("welcometo $days days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

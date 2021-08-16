import 'package:flutter/material.dart';
import 'package:hello_world/pages/login_page.dart';
import 'package:hello_world/utillls/routes.dart';
import 'home_page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
 //flutter get darktheme => null;

  // This widget is the root of your application.
@override
    Widget build(BuildContext context){ 
    return MaterialApp(
     // home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
    ),
    initialRoute: MyRouts.homerout,
    routes: {
      "/": (context)=> LoginPage(),
      MyRouts.homerout :(context) => HomePage(),
      MyRouts.loginrout:(context) => LoginPage(),
    },
    );
  }
}     

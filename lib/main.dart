import 'package:flutter/material.dart';
import 'package:hello_world/pages/login_page.dart';
import 'home_page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  get darktheme => null;

  // This widget is the root of your application.
  @override
Widget build(BuildContext context){ 
    return MaterialApp(
     // home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
    ),
    initialRoute: "/login",
    routes: {
      "/":(context) => HomePage(),
      "/login":(context) => LoginPage(),
    },
    );
  }
}     

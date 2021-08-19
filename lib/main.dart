import 'package:flutter/material.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/pages/login_page.dart';
import 'package:hello_world/utillls/routes.dart';
import 'package:hello_world/widgets/themes.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
@override
    Widget build(BuildContext context){ 
    return MaterialApp(
     themeMode: ThemeMode.light,
      theme: MyThem.lightTheme(context),
      darkTheme: MyThem.darkTheme(context),

    
    initialRoute: MyRouts.homerout,
    routes: {
      "/": (context)=> HomePage(),
      MyRouts.homerout :(context) => HomePage(),
      MyRouts.loginrout:(context) => LoginPage(),
    }
);
  }
}     

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final imageurl =
    "https://itchronicles.com/wp-content/uploads/2021/01/technology-impact-on-life-1024x566.jpg";
  return Drawer(
    child:Container(
      color: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Hafiz"), 
              accountEmail: Text("hafizusama181@gmail.com"),
              currentAccountPicture: CircleAvatar( 
                backgroundImage: NetworkImage(imageurl),
              ),
              )
         
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,
            color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white ) ,
              ),
          ),
            ListTile(
            leading: Icon(CupertinoIcons.profile_circled,
            color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white ) ,
              ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail,
            color: Colors.white,
            ),
            title: Text(
              "email me",
              textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white ) ,
              ),
          )
        ],
        ),
    ) ,
    );
  }

}
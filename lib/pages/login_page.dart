import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget build(BuildContext) {
    return Material(
      color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
            Image.asset("assests/images/login_page.png",
          fit: BoxFit.cover
          ),
          SizedBox(
            height: 20,
          ),
            Text("welcome",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold ),
            ),
            SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal:32.0 ),
            child: Column(
              children: [
                  TextFormField( 
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "username",
              ),
            ), 
            TextFormField( 
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter pasword",
                labelText: "pasword",
              ), 
            ),
            SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: Text("login"),
            onPressed: () {},
            ),
            ],),
          )
              ],
            ),
        ),
    );
  }
}

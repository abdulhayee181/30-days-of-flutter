import 'package:flutter/material.dart';
import 'package:hello_world/utillls/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
 String name = ""; 
 bool changebutton =false;
 final GlobalKey<FormState> formkey = GlobalKey <FormState> ();
  class _LoginPageState extends State<LoginPage> {
     moveToHome (BuildContext context) async {
       if (formkey.currentState!.validate()){
        setState(() {
                    changebutton=true; 
                  });
                  await Future.delayed(Duration(seconds: 1));
                    await Navigator.pushNamed(context, MyRouts.homerout);
                     setState(() {
                    changebutton=false; 
                  });
       }
     }

@override
    Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
              Image.asset("assests/images/login_page.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
              Text("welcome $name",
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
                validator: (String? value){
                  if (value!.isEmpty){
                  return "username can not be empty";
                  }
                  return null;
                },
                 onChanged: (value){
                  name = value;
                  setState(() {});
                },
              ), 
              TextFormField( 
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter pasword",
                  labelText: "pasword",
                ), 
                  validator: (String? value){
                   if (value!.isEmpty ){
                  return "pasword can not be empty";
                  }
                  else if (value.length<5){
                     return "pasword can not be less than 6 digits";
                  }
                  return null;
                  
                  }
                  
              ),
              SizedBox(
              height: 20,
            ),
             Material(
              borderRadius: BorderRadius.circular(changebutton? 50:10), 
              color:Colors.deepPurple,
          
               child: InkWell(
                onTap: () => moveToHome(context),
             
                  child: Ink(
                    child : AnimatedContainer( duration: Duration(seconds:1),
                      width: changebutton? 50 :100,
                      height: 40,
                     alignment: Alignment.center,
                      child: changebutton? Icon(Icons.done,color: Colors.white,) :
                      Text("Login",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize:18, ),
                        ), 
                        ),
                    ),
                      ),
                  ),
                
              
              ],
              
                ),
            ),
            ],
            ),
         ), 
        ),
    );
  }
}

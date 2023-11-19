// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:shopify_app/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shopify_app/home_page.dart';
import 'package:shopify_app/login_page.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Wrap(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("  Hello!\n  Register To Get Started!",
              style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),)
            ],
           ),

           SizedBox(height: 20,),
           Containers(text: "First Name"),
           SizedBox(height: 20,),
           Containers(text: "Last Name"),
           SizedBox(height: 20,),
           Containers(text: "Email"),
           SizedBox(height: 20,),
           Containers(text: "Password"),

           SizedBox(height: 25,),

           Center(
            child: Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomePage()),
                    ); 
                    },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                ),
                child: Text("Register Now"),
              ),
            ),
          ),

          Divider(),
          SizedBox(height: 20,),

          Text("____________________    Or Login With   ____________________",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyIcon(image: "assets/images/facebook.png"),
              SizedBox(width: 30,),
              MyIcon(image: "assets/images/google.png"),
            ],
          ),

          SizedBox(height: 20,),

          Wrap(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already Have an Account? ",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),),

              TextButton(
                child: Text(" Login Now ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                 onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage()),
                    ); 
                    },
              ),

            ],
           ),

          ],
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:shopify_app/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shopify_app/home_page.dart';
import 'package:shopify_app/register_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              Text("Welcome Back!\nGlad to See You, Again!",
              style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
              )
            ],
           ),

           SizedBox(height: 20,),
           Containers(text: "Enter your Email"),
           SizedBox(height: 20,),
           //Containers(text: "Enter your Password"),
           
           Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black54),
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text("Enter your Password",
                  style: TextStyle(
                    color: Colors.black54,
                  ),),
                  SizedBox(width: 120,),
                  Icon(Icons.visibility_off, color: Colors.grey,),
                ],
              ),
            ),
           

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
                child: Text("Login"),
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
              Text("Don't have an Account? ",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w600,     
              ),),

              TextButton(
                child: Text(" Register Now ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,             
                  ),
                ),
                 onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => RegisterScreen()),
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


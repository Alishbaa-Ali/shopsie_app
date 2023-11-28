// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:shopify_app/home_page.dart';
import 'package:shopify_app/login_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Shopsie.",
            style: TextStyle(
              fontSize: 70,
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
            ),),

            SizedBox(height: 15,),

            Text("The Best way to Style your Life.",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontFamily: 'PlayFair',
            ),),

            SizedBox(height: 130,),

            Center(
            child: Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              ),
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage()),
                    ); 
                    },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: Text("Get Started"),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
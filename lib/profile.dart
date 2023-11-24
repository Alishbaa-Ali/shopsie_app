// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shopify_app/common_widgets.dart';
import 'package:shopify_app/home_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          title: Center(
            child: Text("Shopsie.",
             style: TextStyle(
              fontFamily: 'DancingScript',
               color: Colors.pinkAccent,
               fontWeight: FontWeight.bold,
             ),),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Wrap(
            alignment: WrapAlignment.center,
            children: [
              Text("Profile Settings",
              style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
              )
            ],
           ),

           SizedBox(height: 25,),
           Containers(text: "Username"),
           SizedBox(height: 20,),
           Containers(text: "Current Email"),
           SizedBox(height: 20,),
           Containers(text: "New Email"),
           SizedBox(height: 20,),
           

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
                  Text("Current Password",
                  style: TextStyle(
                    color: Colors.black54,
                  ),),
                  SizedBox(width: 120,),
                  Expanded(child: Icon(Icons.visibility_off, color: Colors.grey,)),
                ],
              ),
            ),

            SizedBox(height: 20,),
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
                  Text("New   Password",
                  style: TextStyle(
                    color: Colors.black54,
                  ),),
                  SizedBox(width: 120,),
                  Expanded(child: Icon(Icons.visibility_off, color: Colors.grey,)),
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
                child: Text("Save Changes"),
              ),
            ),
          ),

          ],
        ),
      ),
      
    );
  }
}
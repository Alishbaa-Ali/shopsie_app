// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
// import 'package:shopify_app/common_widgets.dart';

class DetailPage extends StatelessWidget {
  String image;
  String title;
  String price;

  DetailPage({
    required this.image,
    required this.title,
    required this.price
    });
 

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

        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage(image), height: 500,width: 900,),
              SizedBox(height: 25,),
              Text(title,
              style: TextStyle(
                fontFamily: 'PTSans',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,                             
              ),),
              SizedBox(height: 10,),
              Text(price,
              style: TextStyle(
                fontFamily: 'PlayFair',
                color: Colors.pink,
                fontSize: 15,
                fontWeight: FontWeight.w600,                             
              ),),
              SizedBox(height: 20,),
              Text("PRODUCT DETAILS",
              style: TextStyle(
                fontFamily: 'PTSans',
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),),
              // Heading(text: "PRODUCT DETAILS"),
              SizedBox(height: 100,),
              Center(
                child: Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.pinkAccent,
                  ),
                    child: Center(
                    child: Text("Add To Cart",
                    style: TextStyle(
                      fontFamily: 'PTSans',
                      fontWeight: FontWeight.w300,
                      color: Colors.white,                   
                    ),)),
                 ),
              ),
                   
            ],
          ),
        ),
      ),
    );
  }
}
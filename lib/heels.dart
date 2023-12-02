// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shopify_app/AllCategories.dart';
import 'package:shopify_app/common_widgets.dart';

class Heels extends StatelessWidget {
  const Heels ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllCategories()),
                  );
                }, icon: Icon(Icons.arrow_back, color: Colors.black,),),
              backgroundColor: Colors.white,
              toolbarHeight: 50,
              centerTitle: true,
              title:
              Text("Heels",
               style: TextStyle(
                fontFamily: 'DMSans',
                 color: Colors.black,
                 fontSize: 20,
                 fontWeight: FontWeight.w600,
               ),),
          ),

        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
          child: GridView.count(crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 25,
          childAspectRatio: 0.7,
          children: [       
            GridCard(image: "assets/images/Heels (1).jpeg", title: "Olive Brown Heels", price: "\$ 14.99",details: "Step up your style game with our chic olive green heels, blending elegance and versatility for any occasion, offering comfort and sophistication with every step",),
            GridCard(image: "assets/images/Heels (2).jpeg", title: "Pastel Green Heels", price: "\$ 22.93",details: "Add a soft, elegant touch to your ensemble with our enchanting pastel green heels, combining charm and comfort seamlessly in every step you take. Elevate your style effortlessly with these delightful pastel beauties.",),
            GridCard(image: "assets/images/Heels (3).jpeg", title: "Dark Brown Heels", price: "\$ 11.61",details: "Timeless and versatile, our dark brown heels exude sophistication, pairing effortlessly with any outfit for a classic yet chic statement.",),
            GridCard(image: "assets/images/Heels (4).jpeg", title: "Wavy strap Heels", price: "\$ 14.39",details: "Step into trendsetting style with our wavy strap heels, marrying modern design and comfort seamlessly for a fashion-forward statement with every step.",),
            GridCard(image: "assets/images/Heels (5).jpeg", title: "Lilac Heels", price: "\$ 21.69",details: " Embrace whimsical charm with our lilac heels, adding a pop of soft color to your ensemble while ensuring a stylish and feminine touch.",),
          ],),
        ),
      ),
      
    );
  }
}
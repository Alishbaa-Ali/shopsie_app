// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shopify_app/AllCategories.dart';
import 'package:shopify_app/common_widgets.dart';

class Bottoms extends StatelessWidget {
  const Bottoms ({super.key});

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
              Text("Bottoms",
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
          //childAspectRatio: 0.7,
          children: [       
            GridCard(image: "assets/images/Bottoms (1).jpeg", title: "Straight Black Pants", price: "\$ 12.99",details: "Versatile and sleek, our straight black pants exude sophistication, offering a timeless silhouette for a polished and refined look.",),
            GridCard(image: "assets/images/Bottoms (2).jpeg", title: "White Wide Leg Pants", price: "\$ 19.59",details: "Effortlessly chic, our white wide-leg pants bring a touch of elegance to any outfit, boasting a flattering and on-trend silhouette.",),
            GridCard(image: "assets/images/Bottoms (3).jpeg", title: "Beige Pants", price: "\$ 19.99",details: " Embrace understated style with our beige pants, a wardrobe essential designed for versatility and easy pairing with various looks.",),
            GridCard(image: "assets/images/Bottoms (4).jpeg", title: "Black Pants", price: "\$ 13.99",details: "Classic and essential, our black pants offer a go-to option for sophistication and style, perfect for any occasion and outfit.",),
            GridCard(image: "assets/images/Bottoms (5).jpeg", title: "Dark Blue Pants", price: "\$ 11.89",details: "Elevate your ensemble with our dark blue pants, blending a rich hue with a classic design for a stylish and versatile wardrobe staple.",),
            GridCard(image: "assets/images/Bottoms (6).jpeg", title: "Off-White Pants", price: "\$ 10.65",details: "Embody elegance with our off-white pants, boasting a refined hue and timeless appeal, ideal for creating sophisticated looks year-round.",),
            
          ],),
        ),
      ),
      
    );
  }
}
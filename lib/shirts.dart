// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shopify_app/AllCategories.dart';
import 'package:shopify_app/common_widgets.dart';

class Shirts extends StatelessWidget {
  const Shirts({super.key});

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
              Text("Shirts",
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
            GridCard(image: "assets/images/Shirts (1).jpeg", title: "Retro Classic Shirt", price: "\$ 13.99",details: "Timeless elegance meets vintage charm in our retro classic shirt, designed for a sophisticated look that never goes out of style.",),
            GridCard(image: "assets/images/Shirts (2).jpeg", title: "Pink Bow Shirt", price: "\$ 16.89",details: "Playful yet refined, our pink bow shirt adds a touch of femininity and chic flair, perfect for a charming and stylish statement.",),
            GridCard(image: "assets/images/Shirts (3).jpeg", title: "Black Buttoned Shirt", price: "\$ 13.89",details: "Effortlessly versatile, our black button-down shirt embodies sleek sophistication, ensuring a polished look for any occasion.",),
            GridCard(image: "assets/images/Shirts (4).jpeg", title: "Floral Shirt", price: "\$ 11.29",details: " Embrace blooming elegance with our floral shirt, featuring a vibrant print for a fresh and fashionable ensemble.",),
            GridCard(image: "assets/images/Shirts (5).jpeg", title: "West Coast Shirt", price: "\$ 22.89",details: "Capture laid-back coolness in our West Coast shirt, blending relaxed style with a hint of effortless sophistication for a trendy look.",),
            GridCard(image: "assets/images/Shirts (6).jpeg", title: "Grey Linen Shirt", price: "\$ 17.99",details: "Classic meets comfort in our grey linen shirt, offering a refined yet relaxed vibe, perfect for understated elegance in warm weather.",),           
          ],),
        ),
      ),
      
    );
  }
}
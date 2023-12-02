// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shopify_app/AllCategories.dart';
import 'package:shopify_app/common_widgets.dart';

class Dress extends StatelessWidget {
  const Dress ({super.key});

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
              Text("Dress",
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
            GridCard(image: "assets/images/7.jpeg", title: "Pink Floral Dress", price: "\$ 21.12",details: " Embrace garden-inspired elegance with our pink floral dress, blooming with charm and grace, perfect for a romantic and feminine allure.",),
            GridCard(image: "assets/images/2.jpeg", title: "Black Dress", price: "\$ 10.91",details: "Effortlessly chic, our long black dress exudes timeless sophistication, offering versatility and understated glamour for any occasion.",),
            GridCard(image: "assets/images/3.jpeg", title: "Blue Silk Dress", price: "\$ 12.78",details: "Drift into elegance with our blue silk dress, crafted for sophistication and comfort, delivering a touch of luxury in every detail.",),
            GridCard(image: "assets/images/4.jpeg", title: "Swan White Dress", price: "\$ 21.21",details: "Embrace ethereal beauty in our swan white dress, exuding grace and purity, perfect for an enchanting and elegant look.",),
            GridCard(image: "assets/images/5.jpeg", title: "Yellow Dress", price: "\$ 22.15",details: "Radiate joy and warmth with our yellow sunflower dress, a vibrant statement of cheerfulness and style, perfect for sunny days.",),
            GridCard(image: "assets/images/6.jpeg", title: "Blue Fairy Gown", price: "\$ 11.98",details: "Channel whimsical enchantment with our blue fairy dress, weaving magic and charm into your ensemble with its ethereal design and allure.",),
            
          ],),
        ),
      ),
      
    );
  }
}
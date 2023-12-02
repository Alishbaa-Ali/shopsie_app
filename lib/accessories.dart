// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shopify_app/AllCategories.dart';
import 'package:shopify_app/common_widgets.dart';

class Accessories extends StatelessWidget {
  const Accessories({super.key});

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
              Text("Accessories",
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
            GridCard(image: "assets/images/Accessories (1).jpeg", title: "Beach Charms Bracelet", price: "\$ 23.32",details: "Adorn your wrist with coastal allure using our Beach Charms Bracelet, a fusion of seaside elements capturing the essence of the shore in one stylish accessory.",),
            GridCard(image: "assets/images/Accessories (2).jpeg", title: "Sea Shells Bracelet", price: "\$ 12.54",details: "Embrace beach elegance with our Sea Shell Bracelets, intricately crafted to bring a touch of coastal beauty to your ensemble, embodying the serenity of the ocean waves.",),
            GridCard(image: "assets/images/Accessories (3).jpeg", title: "Classic Black Bag", price: "\$ 10.43",details: "Elevate your style with our Classic Black Bag, a timeless accessory exuding sophistication and versatility for any occasion, making a bold statement in elegant simplicity.",),
            GridCard(image: "assets/images/Accessories (4).jpeg", title: "Chic Black Shades", price: "\$ 11.49",details: "Step out in style with our Chic Black Shades, blending classic design with contemporary flair, offering both fashion and UV protection in one sleek package.",),
            GridCard(image: "assets/images/Accessories (5).jpeg", title: "Sea Shell Earings", price: "\$ 9.12",details: "Channel seaside glamour with our Sea Shell Earrings, delicately crafted to reflect the allure of ocean treasures, adding a touch of coastal charm to your look.",),
            GridCard(image: "assets/images/Accessories (6).jpeg", title: "Butterfly HairClaw", price: "\$ 18.99",details: "Embrace whimsical charm with our Butterfly Hairclaw, a playful yet elegant accessory perfect for effortlessly securing your hair while adding a delightful touch of nature-inspired beauty.",),
            
          ],),
        ),
      ),
      
    );
  }
}
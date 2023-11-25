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
          children: [       
            GridCard(image: "assets/images/Accessories (1).jpeg", title: "Beach Bracelet", price: "\$ 23.32"),
            GridCard(image: "assets/images/Accessories (2).jpeg", title: "Sea Shells Bracelet", price: "\$ 12.54"),
            GridCard(image: "assets/images/Accessories (3).jpeg", title: "Classic Black Bag", price: "\$ 10.43"),
            GridCard(image: "assets/images/Accessories (4).jpeg", title: "Black Shades", price: "\$ 11.49"),
            GridCard(image: "assets/images/Accessories (5).jpeg", title: "Sea Shell Earings", price: "\$ 9.12"),
            GridCard(image: "assets/images/Accessories (6).jpeg", title: "Butterfly HairClaw", price: "\$ 18.99"),
            
          ],),
        ),
      ),
      
    );
  }
}
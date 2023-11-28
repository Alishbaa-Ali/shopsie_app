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
            GridCard(image: "assets/images/Shirts (1).jpeg", title: "Retro Classic Shirt", price: "\$ 13.99"),
            GridCard(image: "assets/images/Shirts (2).jpeg", title: "Pink Bow Shirt", price: "\$ 16.89"),
            GridCard(image: "assets/images/Shirts (3).jpeg", title: "Black Buttoned Shirt", price: "\$ 13.89"),
            GridCard(image: "assets/images/Shirts (4).jpeg", title: "Floral Shirt", price: "\$ 11.29"),
            GridCard(image: "assets/images/Shirts (5).jpeg", title: "West Coast Shirt", price: "\$ 22.89"),
            GridCard(image: "assets/images/Shirts (6).jpeg", title: "Grey Linen Shirt", price: "\$ 17.99"),           
          ],),
        ),
      ),
      
    );
  }
}
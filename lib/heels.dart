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
              Text("HEELS",
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
            GridCard(image: "assets/images/Heels (1).jpeg", title: "Heels 1", price: "\$ 12.99"),
            GridCard(image: "assets/images/Heels (2).jpeg", title: "Heels 1", price: "\$ 12.99"),
            GridCard(image: "assets/images/Heels (3).jpeg", title: "Heels 1", price: "\$ 12.99"),
            GridCard(image: "assets/images/Heels (4).jpeg", title: "Heels 1", price: "\$ 12.99"),
            GridCard(image: "assets/images/Heels (5).jpeg", title: "Heels 1", price: "\$ 12.99"),
          ],),
        ),
      ),
      
    );
  }
}
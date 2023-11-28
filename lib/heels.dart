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
            GridCard(image: "assets/images/Heels (1).jpeg", title: "Olive Brown Heels", price: "\$ 14.99"),
            GridCard(image: "assets/images/Heels (2).jpeg", title: "Pastel Green Heels", price: "\$ 22.93"),
            GridCard(image: "assets/images/Heels (3).jpeg", title: "Dark Brown Heels", price: "\$ 11.61"),
            GridCard(image: "assets/images/Heels (4).jpeg", title: "Wavy strap Heels", price: "\$ 14.39"),
            GridCard(image: "assets/images/Heels (5).jpeg", title: "Lilac Heels", price: "\$ 21.69"),
          ],),
        ),
      ),
      
    );
  }
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart'; 
import 'package:shopify_app/accessories.dart';
 import 'package:shopify_app/bottoms.dart';
import 'package:shopify_app/common_widgets.dart';
import 'package:shopify_app/dress.dart';
import 'package:shopify_app/heels.dart';
import 'package:shopify_app/home_page.dart';
import 'package:shopify_app/shirts.dart';

class AllCategories extends StatelessWidget {
  const AllCategories ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }, icon: Icon(Icons.arrow_back, color: Colors.black,),),
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          title: Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              // Icon(Icons.arrow_back, color: Colors.black,),
               Spacer(),
              Text("All Categories",
               style: TextStyle(
                fontFamily: 'DMSans',
                 color: Colors.black,
                 fontSize: 20,
                 fontWeight: FontWeight.w600,
               ),),
              Spacer(),
              IconButton(
                icon: Icon(Icons.grid_on_outlined,color: Colors.black,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Grid()),
                  );
                },
              ),
            ],
          ),
        ),

        body: ListView(
          padding: EdgeInsets.all(25),
          children: [
            SizedBox(height: 15,),
            List(image: "assets/images/Shirts (1).jpeg", text: "Shirts", destination: Shirts()),
            SizedBox(height: 20,),
            List(image: "assets/images/Bottoms (1).jpeg", text: "Bottoms", destination: Bottoms()),
            SizedBox(height: 20,),
            List(image: "assets/images/2.jpeg", text: "Dresses", destination: Dress()),
            SizedBox(height: 20,),
            List(image: "assets/images/Heels (1).jpeg", text: "Heels", destination: Heels()),
            SizedBox(height: 20,),
            List(image: "assets/images/Accessories (2).jpeg", text: "Accessories", destination: Accessories()),
          ],
        ),
      ),
      
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          title: Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Icon(Icons.arrow_back, color: Colors.black,),
              Spacer(),
              Text("All Categories",
               style: TextStyle(
                fontFamily: 'PTSans',
                 color: Colors.black,
                 fontSize: 20,
                 fontWeight: FontWeight.w600,
               ),),
              Spacer(),
              IconButton(
                icon: Icon(Icons.list,color: Colors.black,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllCategories()),
                  );
                },
              ),
            ],
          ),
        ),

        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
          child: GridView.count(crossAxisCount: 2,
          crossAxisSpacing:15,
          mainAxisSpacing: 15,
          children: [     
            GridCardListView(image: "assets/images/Shirts (1).jpeg", title: "Shirts", destination: Shirts()),
            GridCardListView(image: "assets/images/Bottoms (1).jpeg", title: "Bottoms", destination: Bottoms()),
            GridCardListView(image: "assets/images/2.jpeg", title: "Dresses", destination: Dress()),
            GridCardListView(image: "assets/images/Heels (1).jpeg", title: "Heels", destination: Heels()),
            GridCardListView(image: "assets/images/Accessories (2).jpeg", title: "Accessories", destination: Accessories()),
          ],),
        ),
      ),
    );
  }
}
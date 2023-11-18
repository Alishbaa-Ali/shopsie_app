// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  String text;
  Containers ({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black54),
      ),
      padding: EdgeInsets.all(8),
      child: Text(text,
      style: TextStyle(
        color: Colors.black54,
      ),),
    );
  }
}

class MyIcon extends StatelessWidget {
  String image;
   MyIcon ({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 50,
                width: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image)
                  ),
                  borderRadius: BorderRadius.circular(5),
                  //border: Border.all(color: Colors.black54),
                  // color: Colors.grey,
                  //border: Border.all(color: Colors.black54),
                ),
               );
  }
}

class ColorContainer extends StatelessWidget {
  String text;
   ColorContainer({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  //border: Border.all(color: Colors.black54),
                  color: Color.fromARGB(79, 95, 113, 122),
                ),
                child: Center(
                  child: Text(text,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,                   
                  ),)),
               );
  }
}


class Cards extends StatelessWidget {
  String image;
  String price;
  String title;
Cards({
    required this.image,
    required this.price,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 220,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height: 165,
          width: 165,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600, fontFamily: 'PTSans'),
        ),
        
        Row(
          children: [
            Text(
              price,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.pink, fontFamily: 'PlayFair'),
            ),
            
          ],),
        ],
      ),
    );
  }
}


class Categories extends StatelessWidget {
  String image;
  String title;
  String details;
Categories({
    required this.image,
    required this.title,
    required this.details,
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Padding(
        padding:EdgeInsets.only(left: 15, right: 15),
        child: Image.asset(image),
      ),
      SizedBox(height: 8,),
      Text(title,
      style: TextStyle(
        fontFamily: 'PlayFair',
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),),
      SizedBox(height: 5,),
      Text(details,
      style: TextStyle(
        fontFamily: 'PlayFair',
        color: Colors.grey,
        fontSize: 12,
      ),),
      SizedBox(height: 30,)


      ],
      
    );
  }
}

class Brands extends StatelessWidget {
  String image;
Brands({
    required this.image,
});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 300,
          width: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        );
  }
}

class Heading extends StatelessWidget {
  String text;
Heading({
   required this.text,
});

  @override
  Widget build(BuildContext context) {
    return Text(text,
                style: TextStyle(
                  fontFamily: 'PTSans',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 25,
                ),);
  }
}


class Details extends StatelessWidget {
  String text1;
  String text2;
  String image;
   Details({
    required this.text1,
    required this.text2,
    required this.image,
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding:EdgeInsets.only(left: 20),
                child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'PlayFair',
                        fontSize: 10,
                        color: Colors.pink,
                      )
                     ),
                     SizedBox(height: 5,),
                      Text(text2,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      )),
                    ],
                  ),
                ],
               ),
              );
  }
}

class Recommendations extends StatelessWidget {
  String text1;
  String text2;
   Recommendations({
    required this.text1,
    required this.text2,
   });

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
            Text(text1,
            style: TextStyle(
              fontFamily: 'PTSans',
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(width: 13,),
            Text(text2,
            style: TextStyle(
              fontFamily: 'PTSans',
              fontSize: 12,
            ),),
            SizedBox(width: 5,),
            Icon(Icons.keyboard_arrow_down_outlined, size: 12,),
           ],
        );
  }
}
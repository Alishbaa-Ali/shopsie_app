// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:shopify_app/home_page.dart';
// import 'package:shopify_app/common_widgets.dart';

class DetailPage extends StatelessWidget {
  String image;
  String title;
  String price;
  String details;

  DetailPage({
    required this.image,
    required this.title,
    required this.price,
    required this.details,

    });
 

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
          centerTitle: true,
          title: Text("Shopsie.",
           style: TextStyle(
            fontFamily: 'DancingScript',
             color: Colors.pinkAccent,
             fontWeight: FontWeight.bold,
           ),),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image(image: AssetImage(image), height: 500,width: 900,),
                Image(image: AssetImage(image), fit: BoxFit.cover,),
                SizedBox(height: 25,),
                Text(title,
                style: TextStyle(
                  fontFamily: 'PTSans',
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,                             
                ),),
                SizedBox(height: 10,),
                Text(price,
                style: TextStyle(
                  fontFamily: 'PlayFair',
                  color: Colors.pink,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,                             
                ),),
                SizedBox(height: 10,),
                Text("Product Details",
                style: TextStyle(
                  fontFamily: 'PTSans',
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(height: 13,),
                Text(details,
                style: TextStyle(
                  fontFamily: 'PTSans',
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),
                
                // Heading(text: "PRODUCT DETAILS"),
                SizedBox(height: 100,),
                Center(
                  child: Container(
                    height: 30,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.pinkAccent,
                    ),
                      child: Center(
                      child: Text("Add To Cart",
                      style: TextStyle(
                        fontFamily: 'PTSans',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,                   
                      ),)),
                   ),
                ),
                     
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class DetailPage extends StatelessWidget {
//   final Map<String, dynamic> product;

//   const DetailPage({
//     required this.product
//     });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(product['name']),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset(
//               product['imageUrl'],
//               width: 150,
//               height: 150,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Price: ${product['price']}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Description: ${product['description']}',
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:shopify_app/common_widgets.dart';
// import 'package:shopify_app/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          title: Wrap(
            spacing: 2,
            children: [
              // Padding(padding: EdgeInsets.only(left: 5)),
              SizedBox(width: 2,),
              Icon(Icons.menu, color: Colors.black,),
               SizedBox(width: 120,),
             Text("Shopsie.",
             style: TextStyle(
              fontFamily: 'DancingScript',
               color: Colors.pinkAccent,
               fontWeight: FontWeight.bold,
             ),),
              SizedBox(width: 80,),
             Icon(Icons.search, color: Colors.black,),
             //SizedBox(width: 3,),
             Icon(Icons.shopping_cart_rounded, color: Colors.black,),
             //SizedBox(width: 3,),
             Icon(Icons.person_2_sharp, color: Colors.black,),
            //  Padding(padding: EdgeInsets.only(right: 5)),
            SizedBox(width: 2,),
            ],
          )
        ),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/1.jpeg'),  

              Divider(),
              SizedBox(height: 10,),

              Heading(text: "TRENDING NOW"),

              SizedBox(height: 20,),

              Wrap(
                //spacing: 20,
                runSpacing: 20,
                children: [
                  Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  //border: Border.all(color: Colors.black54),
                  color: Colors.pinkAccent,
                ),
                  child: Center(
                  child: Text("All",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,                   
                  ),)),
               ),
                  SizedBox(width: 10,),
                  ColorContainer(text: "Dresses"),
                  SizedBox(width: 10,),
                  ColorContainer(text: "Accessories"),
                  SizedBox(width: 10,),
                  ColorContainer(text: "Scarfs"),
                
                ],
              ),

              SizedBox(height: 20,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    Cards(image: "assets/images/2.jpeg", price: "\$ 13.45", title: "Black Floral Dress"),
                    Cards(image: "assets/images/3.jpeg", price: "\$ 18.99", title: "Pink Fairy Gown"),
                    Cards(image: "assets/images/4.jpeg", price: "\$ 17.95", title: "White Floral Gown"),
                    Cards(image: "assets/images/5.jpeg", price: "\$ 20.45", title: "Sunflower Dress"),
                    Cards(image: "assets/images/6.jpeg", price: "\$ 11.93", title: "Accent Blue Dress"),
                    Cards(image: "assets/images/18.jpeg", price: "\$ 11.45", title: "silver Rose Dress"),
                    Cards(image: "assets/images/17.jpeg", price: "\$ 13.45", title: "Black Swan Dress"),
                    
                  ],
                ),
              ),

              Divider(),
              SizedBox(height: 10,),

              Heading(text: "ACTUAL CATEGORIES"),

              SizedBox(height: 20,),

              Categories(image: "assets/images/16.jpeg", title: "Co-ord Sets", details: "Impressive Range of Western two-peice sets"),
              Categories(image: "assets/images/15.jpeg", title: "Luxury Shoes Collection", details: "High Heels, Leather Shoes & more"),
              Categories(image: "assets/images/7.jpeg", title: "Long Dresses", details: "Floral, Solid & Winter Gowns"),
              //Categories(image: "assets/images/2.jpeg", title: "title", details: "details"),

              Divider(),
              SizedBox(height: 10,),

              Heading(text: "ONLY TRUSTED BRANDS",),
              SizedBox(height: 20,),

              Image.asset('assets/images/brands.png'),
              Image.asset('assets/images/8.jpeg'),

              Divider(),
              SizedBox(height: 25,),
              Heading(text: "RECOMMENDED LOOKS FOR YOU"),
              SizedBox(height: 25,),

              Wrap(
                 runSpacing: 10,
                 spacing: 10,
                children: [
                  //Padding(padding: EdgeInsets.all(10)),
                  Recommendations(text1: "Gender:", text2: "Female"),      
                  Recommendations(text1: "Style:", text2: "PartyWear"),
                  Recommendations(text1: "Price Range:", text2: "All"),
                ],
              ),

              SizedBox(height: 25,),
              Padding(
               padding:EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), 
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,                   
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 600,
                          width: 600,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/19.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding:EdgeInsets.all(20),
                        child: Text("In This Look",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PTSans'
                        ),),
                      ),
                      
                      Details(text1: "\$ 19.54", text2: "Carnation - Accent Pink Long Floral Dress", image: "assets/images/20.jpeg"),
                      Divider(),
                      Details(text1: "\$ 10.15", text2: "Sparkly Mid Length Earings", image: "assets/images/21.jpeg"),
                      Divider(),
                      Details(text1: "\$ 29.99", text2: "Transparent Heels", image: "assets/images/22.jpeg"),
                      Divider(),

                      Center(
                        child: Container(
                          height: 30,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.pinkAccent),
                            color: Color.fromARGB(13, 95, 113, 122),
                          ),
                          child: Center(
                            child: Text("Buy It Now",
                            style: TextStyle(
                              //fontWeight: FontWeight.w600,
                              color: Colors.pink,                   
                            ),)),
                        ),
                      ),

                      SizedBox(height: 10,),                  
                    ],       
                  ),
                ),
              ),

              Divider(),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios_new_outlined, color: Colors.grey,),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey,),
                ],
              ),

              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(25),
                width: double.maxFinite,
                color: Color.fromARGB(47, 255, 64, 128),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/images/23.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Get 20% Discount Now",
                          style: TextStyle(
                            fontFamily: "DancingScript",
                            color: Colors.pink,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Leave Your Email & Get a Discount",
                          style: TextStyle(
                            fontFamily: "PlayFair",
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       Container(
                          height: 35,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text("Email",
                            style: TextStyle(
                              //fontWeight: FontWeight.w600,
                              color: Colors.grey,                   
                            ),),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            //border: Border.all(color: Colors.black54),
                            color: Colors.pinkAccent,
                          ),
                            child: Center(
                            child: Text("Subscribe",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,                   
                            ),
                            ),
                            ),
                        ),
                       ],
                     ),                     
                     ],
                    ),
                  ],
                ),
              ),

              Divider(),
              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.all(10),
                width: double.maxFinite,
                color: Colors.black45,
                height: 40,
                child: Row(
                  children: [
                    Text("© 2021 Shospie",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PlayFair',
                      fontSize: 12,
                    ),),
                    SizedBox(width: 160,),
                    Text("Privacy & Cookies",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PlayFair',
                      fontSize: 12,
                    ),),
                    SizedBox(width: 10,),
                    Text("Ts&Cs",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PlayFair',
                      fontSize: 12,
                    ),),
                  ],
                ),
              ),


            ],
                
          ),
        ),
      ),
    );
  }
}
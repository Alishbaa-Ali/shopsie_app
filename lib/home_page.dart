// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:shopify_app/AllCategories.dart';
import 'package:shopify_app/accessories.dart';
import 'package:shopify_app/bottoms.dart';
import 'package:shopify_app/common_widgets.dart';
import 'package:shopify_app/dress.dart';
import 'package:shopify_app/heels.dart';
import 'package:shopify_app/profile.dart';
import 'package:shopify_app/shirts.dart';
// import 'package:shopify_app/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu,color: Colors.black,),
                onPressed:() {
                Scaffold.of(context).openDrawer();
                },
              );
            }
          ), 
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          //centerTitle: true,
          title:
              Row(
                children: [
                  // Spacer(),                
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Shopsie.",
                        style: TextStyle(
                          fontFamily: 'DancingScript',
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.search_rounded, color: Colors.black,),
                      SizedBox(width: 10,),
                      Icon(Icons.shopping_cart_rounded, color: Colors.black,),
                      SizedBox(width: 10,),
                      Icon(Icons.person_2_sharp, color: Colors.black,),

                    ],
                  ))
                ],
              ),
        ),


        drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(25),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CircleAvatar(radius: 50,
                    backgroundImage: AssetImage("assets/images/profile.jpeg"),),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Username",
                        style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'DancingScript',fontSize: 18),),
                        SizedBox(height: 5,),
                        Text("Email Here",
                        style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'DMSans'),),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Text("Information",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 30,),
            ListItem(icon: Icons.mode_edit_outline_outlined, text: "Edit Profile", destination: Profile()),
            ListItem(icon: Icons.person_outline, text: "Username", destination: Profile(),),
            ListItem(icon: Icons.email_outlined, text: "Email", destination: Profile(),),
            ListItem(icon: Icons.lock_outline_rounded, text: "Password", destination: Profile(),),

            SizedBox(height: 35,),
            Text("Categories",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 30,),
            ListItem(icon: Icons.window_rounded, text: "All Categories", destination: AllCategories()),
            ListItemIcon(icon: "assets/images/shirt.png", text: "Shitrs", destination: Shirts(),),
            ListItemIcon(icon: "assets/images/bottoms.png", text: "Bottoms", destination: Bottoms(),),
            ListItemIcon(icon: "assets/images/dress.png", text: "Dresses", destination: Dress(),),
            ListItemIcon(icon: "assets/images/heels.png", text: "Heels", destination: Heels(),),
            ListItemIcon(icon: "assets/images/watch.png", text: "Accessories", destination: Accessories(),),
              ],
              ),
              ),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/1.jpeg'),  

              Divider(),
              SizedBox(height: 10,),

              Heading(text: "TRENDING NOW"),

              // SizedBox(height: 20,),

              // Wrap(
              //   //spacing: 20,
              //   runSpacing: 20,
              //   children: [
              //     Container(
              //   height: 30,
              //   width: 70,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.all(Radius.circular(10)),
              //     //border: Border.all(color: Colors.black54),
              //     color: Colors.pinkAccent,
              //   ),
              //     child: Center(
              //     child: Text("All",
              //     style: TextStyle(
              //       fontWeight: FontWeight.w500,
              //       color: Colors.white,                   
              //     ),)),
              //  ),
              //     SizedBox(width: 10,),
              //     // ColorContainer(text: "Dress", destination: Dress()),
              //     // SizedBox(width: 10,),
              //     // ColorContainer(text: "Shirts", destination: Shirts()),
              //     // SizedBox(width: 10,),
              //     // ColorContainer(text: "Heels", destination: Heels()),
                
              //   ],
              // ),

              SingleChildScrollView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                         Navigator.push(context,
                         MaterialPageRoute(builder: (context) => AllCategories()));
                      },
                      child: Container(
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
                    ),
                  SizedBox(width: 10,),
                  ColorContainer(text: "Dress", destination: Dress()),
                  SizedBox(width: 10,),
                  ColorContainer(text: "Shirts", destination: Shirts()),
                  SizedBox(width: 10,),
                  ColorContainer(text: "Bottoms", destination: Bottoms()),   
                  SizedBox(width: 10,),  
                  ColorContainer(text: "Dress", destination: Dress()),
                  SizedBox(width: 10,),
                  ColorContainer(text: "Accessories", destination: Accessories()),
                  SizedBox(width: 10,),
                  ],
                ),
              ),

              //SizedBox(height: 20,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    Cards(image: "assets/images/2.jpeg", price: "\$ 13.45", title: "Black Floral Dress",details: "Effortlessly chic, our long black dress exudes timeless sophistication, offering versatility and understated glamour for any occasion.",),
                    Cards(image: "assets/images/3.jpeg", price: "\$ 18.99", title: "Pink Fairy Gown",details: "Embrace garden-inspired elegance with our pink floral dress, blooming with charm and grace, perfect for a romantic and feminine allure.",),
                    Cards(image: "assets/images/4.jpeg", price: "\$ 17.95", title: "White Floral Gown",details: "Exude grace and charm in our White Floral Dress, adorned with delicate blooms that dance across a pristine canvas, offering an effortlessly elegant look perfect for any occasion",),
                    Cards(image: "assets/images/5.jpeg", price: "\$ 20.45", title: "Sunflower Dress",details: "Radiate joy and warmth with our yellow sunflower dress, a vibrant statement of cheerfulness and style, perfect for sunny days.",),
                    Cards(image: "assets/images/6.jpeg", price: "\$ 11.93", title: "Accent Blue Dress",details: "Channel whimsical enchantment with our blue accent dress, weaving magic and charm into your ensemble with its ethereal design and allure.",),
                    Cards(image: "assets/images/18.jpeg", price: "\$ 11.45", title: "silver Rose Dress",details: "Radiate elegance in our Silver Rose Dress, a shimmering ensemble capturing the ethereal beauty of delicate petals, ensuring a captivating and glamorous presence at any affair",),
                    Cards(image: "assets/images/17.jpeg", price: "\$ 13.45", title: "Black Swan Dress",details: "Embrace enchanting allure with our Black Swan Dress, a graceful ensemble that exudes sophistication and mystery, perfect for making a dramatic statement at special occasions.",),
                    
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

                  Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 10,
                    //mainAxisAlignment: MainAxisAlignment.center,
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
                    //SizedBox(width: 160,),
                    Spacer(),
                    Text("Privacy & Cookies",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PlayFair',
                      fontSize: 12,
                    ),),
                    //SizedBox(width: 10,),
                    Spacer(),
                    Expanded(
                      child: Text("Ts&Cs",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PlayFair',
                        fontSize: 12,
                      ),),
                    ),
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
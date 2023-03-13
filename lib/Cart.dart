// Made by Techflux Solutions at 1-March-2023 - Apoorva Junagade
//Code for My cart

import 'package:flutter/material.dart';
import 'Category.dart';
import 'seller.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'Contact.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('')),
            ListTile(
              title: const Text(
                'Become a Seller',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.sell_outlined),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Seller()),
              );},
            ),
            // ListTile(
            //   title: const Text(
            //     'Language',
            //     style: TextStyle(color: Colors.black54),
            //   ),
            //   leading: const Icon(Icons.language),
            //   onTap: () {},
            // ),
            ListTile(
              title: const Text(
                'Theme',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.mode),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Contact us',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.info_outline),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Contact()),
              );},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.shopping_cart,size:32,color: Colors.black,),
            SizedBox(
              width: 8,
            ),
            Text(
              "My Cart",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:  const Icon(
            Icons.language,
            color: Colors.deepOrangeAccent,
          ),)
        ],
        iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),


      ),
      body: SingleChildScrollView(
        child:Center(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                height:500,
                width:320,
                // child:  DecoratedBox(
                //   decoration:  BoxDecoration(
                //     border: Border.all(),
                //
                //   ),
                child: Column(


                  children: [
                    SizedBox(height: 200),
                    Expanded(
                      child: Transform.scale(
                        scale: 2.5,
                        child: Image.asset(
                          'img_3.png',
                          width:300,
                          height: 300,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                        child: Center(
                            child: Text(
                              'Your cart is empty.',
                              style: TextStyle(fontSize: 35, color: Colors.black),
                            ))),
                    // SizedBox(height:10),
                    // SizedBox(height: 20),
                    Expanded(
                        child: Center(
                            child: Text(
                              'Looks like you haven\’t added \n  anything to your cart yet',
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ))),
                     SizedBox(height: 20),
                    InkWell(
                      child: Image.asset(
                        'search.png',
                        height: 50,
                      ),
                      onTap:  (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Category()),
                        );
                      },
                    ),
                    //Container(
                    // child: Center(
                    //   child: InkWell(
                    //     child: Image.asset('asset/giphy.gif', width: 150,),
                    //     // child:AnimatedTextKit(
                    //     //   animatedTexts: [
                    //     //     ColorizeAnimatedText(
                    //     //       //Duration: 600,
                    //     //
                    //     //       'Lets Go!!',
                    //     //       textStyle: colorizeTextStyle,
                    //     //       colors: colorizeColors,
                    //        // ),
                    //         // ScaleAnimatedText('Build'),
                    //         // ScaleAnimatedText('Ship'),
                    //
                    //       // ],
                    //       // isRepeatingAnimation: true,
                    //     // Text(
                    //     //   'Lets go!!',
                    //     //   style: TextStyle(fontSize: 35, color: Colors.black),
                    //     // ),
                    //
                    //     onTap: (){
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(builder: (context) => Category()),
                    //       );
                    //     },
                    //   ),
                    // ),
                    // ),
                  ],),
              ),],
          ),
        ),
      ),
    );
  }
}
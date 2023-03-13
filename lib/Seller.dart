// Made by Techflux Solutions at 27-feb-2023 - Apoorva Junagade

import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:hover_effect/hover_effect.dart';

//Page for Become a seller


class Seller extends StatefulWidget {
  //Seller();
  //String? imageUrl;
  //double? borderWidth;


  @override
  State<Seller> createState() => _SellerState();
}

class _SellerState extends State<Seller> {
  bool _isHovering = false;

  var submitTextStyle = const TextStyle(
      fontSize: 28,
      letterSpacing: 2,
      color: Colors.white,
      fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              // Icon(Icons.sell_outlined,size:32,color: Colors.black,),
              SizedBox(
                width: 8,
              ),
              Text(
                "Become a seller",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
           iconTheme: const IconThemeData(color: Colors.black),


        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children:[
                SizedBox(
                  height:30,
                ),
                Container(
                  height:550,
                  width:300,
                  child:  DecoratedBox(
                      decoration:  BoxDecoration(
                          color: Colors.black

                      ),
                      child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Container(child: Text('WORK YOUR WAY\n',style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.orange),)),
                            Container(child: Text(' You bring the skill.\n We will make earning \n easy.',style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)),
                            SizedBox(
                              height: 30,
                            ),
                            Container(child:Text('A Gig is bought every',style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.grey),)),
                            Container(child:Text('4 sec',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)),
                            SizedBox(
                              height: 30,
                            ),
                            Container(child:Text('50M+',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)),
                            Container(child:Text('Transactions',style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.grey),)),
                            SizedBox(
                              height: 30,
                            ),
                            Container(child:Text('\$5.00 - \$10,000.00',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)),
                            Container(child:Text('Price range',style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.grey),)),
                            SizedBox(
                              height: 30,
                            ),
                            Container(child:Text('5 MILLION',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)),
                            Container(child:Text('Active monthly visits',style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.grey),)),



                          ]
                      )
                  ),

                ),
                Container(
                    padding: EdgeInsets.all(20.0),
                    child:Text('Join our growing freelance community',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey),)),
                Container(
                  width: 150,
                  height: 150,
                  child: HoverCard(
                    builder: (context, hovering) {
                      return Container(
                        color: Color(0xFFE9E9E9),
                        child: Center(
                          child: Image.asset('sellerimg.jpg'),
                        ),
                      );
                    },
                    depth: 10,
                    depthColor: Colors.grey[500],
                    onTap: () => print('Hello, World!'),
                    shadow: BoxShadow(color: Colors.orange, blurRadius: 30, spreadRadius: -20, offset: Offset(0, 40)),
                  ),

                ),
                Container(child:Text('Agendra Lee',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                Container(child:Text('I am a designer',style:TextStyle(fontSize: 15, color: Colors.black),)),
                SizedBox(
                  height:50,
                ),
                Container(

                  width: 150,
                  height: 150,
                  child: HoverCard(
                    builder: (context, hovering) {
                      return Container(
                        color: Color(0xFFE9E9E9),
                        child: Center(
                          child: Image.asset('sellerimg.jpg'),
                        ),
                      );
                    },
                    depth: 10,
                    depthColor: Colors.grey[500],
                    onTap: () => print('Hello, World!'),
                    shadow: BoxShadow(color: Colors.orange, blurRadius: 30, spreadRadius: -20, offset: Offset(0, 40)),
                  ),

                ),
                Container(child:Text('Alejandro Lee',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                Container(child:Text('I am a developer',style:TextStyle(fontSize: 15, color: Colors.black),)),
                SizedBox(
                  height: 50,
                ),
                Container(

                  width: 150,
                  height: 150,
                  child: HoverCard(
                    builder: (context, hovering) {
                      return Container(
                        color: Color(0xFFE9E9E9),
                        child: Center(
                          child: Image.asset('sellerimg.jpg'),
                        ),
                      );
                    },
                    depth: 10,
                    depthColor: Colors.grey[500],
                    onTap: () => print('Hello, World!'),
                    shadow: BoxShadow(color: Colors.orange, blurRadius: 30, spreadRadius: -20, offset: Offset(0, 40)),
                  ),

                ),
                Container(child:Text('Elsa King',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                Container(child:Text('I am a writer',style:TextStyle(fontSize: 15, color: Colors.black),)),
                SizedBox(
                  height: 50,
                ),
                Container(

                  width: 150,
                  height: 150,
                  child: HoverCard(
                    builder: (context, hovering) {
                      return Container(
                        color: Color(0xFFE9E9E9),
                        child: Center(
                          child: Image.asset('sellerimg.jpg'),
                        ),
                      );
                    },
                    depth: 10,
                    depthColor: Colors.grey[500],
                    onTap: () => print('Hello, World!'),
                    shadow: BoxShadow(color: Colors.orange, blurRadius: 30, spreadRadius: -20, offset: Offset(0, 40)),
                  ),

                ),
                Container(child:Text('Herman Reese',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                Container(child:Text('I am a video editor',style:TextStyle(fontSize: 15, color: Colors.black),)),
                SizedBox(
                  height: 50,
                ),
                Container(

                  width: 150,
                  height: 150,
                  child: HoverCard(
                    builder: (context, hovering) {
                      return Container(
                        color: Color(0xFFE9E9E9),
                        child: Center(
                          child: Image.asset('sellerimg.jpg'),
                        ),
                      );
                    },
                    depth: 10,
                    depthColor: Colors.grey[500],
                    onTap: () => print('Hello, World!'),
                    shadow: BoxShadow(color: Colors.orange, blurRadius: 30, spreadRadius: -20, offset: Offset(0, 40)),
                  ),

                ),
                Container(child:Text('Sue Keller',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                Container(child:Text('I am a Musician',style:TextStyle(fontSize: 15, color: Colors.black),)),

                SizedBox(
                  height: 50,
                ),
                Container(child:Text('How it works',style:TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height:100,
                  child:Image.asset('img.png'),
                ),
                Container(child:Text('Create A gig',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),)),
                Container(child:Text('Sign up for free, set up your Gig, and \noffer your work to our global audience.',style:TextStyle(fontSize: 15, color: Colors.black),)),
                SizedBox(
                  height:20,
                ),
                Container(
                  height:100,
                  child:Image.asset('img_1.png'),
                ),
                Container(child:Text('Deliver great work',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),)),
                Container(child:Text('Get notified when you get an order and\nuse our system to discuss details with customers.',style:TextStyle(fontSize: 15, color: Colors.black),)),
                SizedBox(
                  height:20,
                ),
                Container(
                  height:100,
                  child:Image.asset('img_2.png'),
                ),
                Container(child:Text('Get paid',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),)),
                Container(child:Text('Get paid on time, every time. Payment is\navailable for withdrawal as soon as it clears.',style:TextStyle(fontSize: 15, color: Colors.black),)),
                SizedBox(
                  height:50,
                ),

                Container(
                  child: Column(

                    // mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        CircleAvatar(child: Image.asset('fire.png', height: 90,),backgroundColor: Colors.orangeAccent,),
                        Center(

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: RichText(
                              textAlign:  TextAlign.center,
                              text: TextSpan(

                                text: 'Sign up and create your first Gig ',
                                style: TextStyle(fontWeight: FontWeight.bold, color:Colors.black, fontSize: 25),
                                children: <TextSpan>[
                                  TextSpan(text: 'Today', style: TextStyle(fontWeight: FontWeight.bold, color:Colors.orange)),
                                  TextSpan(text: ' !'),
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Become a top seller on our platform and start making profits online',style:TextStyle(fontSize: 20, color:Colors.orange  ),),
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child:
                          AnimatedButton(
                            height: 100,
                            width: 500,
                            text: 'Lets get started',
                            isReverse: true,
                            selectedTextColor: Colors.deepOrangeAccent,
                            transitionType: TransitionType.LEFT_TO_RIGHT,
                            textStyle: submitTextStyle,
                            backgroundColor: Colors.deepOrangeAccent,
                            borderColor: Colors.white,
                            borderRadius: 50,
                            borderWidth: 2,
                            onPress: () {

                            },
                          ),
                        ),
                        // ElevatedButton.icon(
                        //   style: ElevatedButton.styleFrom(
                        //
                        //     backgroundColor: Colors.deepOrangeAccent,
                        //   ),
                        //   icon: Icon(Icons.arrow_forward, color: Colors.white,),
                        //
                        //   onPressed:() {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => Seller()),
                        //     );
                        //   },
                        //   // padding:EdgeInsets.all(20.0),
                        //   label:Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: Text('Lets get started',
                        //         style:TextStyle(backgroundColor: Colors.deepOrangeAccent,fontSize: 20,
                        //             fontWeight: FontWeight.bold, color: Colors.white)),
                        //   ),
                        // ),
                        SizedBox(height: 40),
                        // Code for signing up for the newsletter
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[ Text('signup for our newsletter',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text('Sign up for our weekly update and be the first\n to know about our specials and promotions',style:TextStyle(fontSize: 15,  ),),
                              ),
                              Padding(
                                padding:  EdgeInsets.all(20.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter your e-mail address',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                          SizedBox(
                            height: 40,
                            width: 150,
                            child:
                            AnimatedButton(
                              height: 60,
                              width: 200,
                              text: 'Sign Up',
                              isReverse: true,
                              selectedTextColor: Colors.deepOrangeAccent,
                              transitionType: TransitionType.LEFT_TO_RIGHT,
                              textStyle: submitTextStyle,
                              backgroundColor: Colors.deepOrangeAccent,
                              borderColor: Colors.white,
                              borderRadius: 50,
                              borderWidth: 2,
                              onPress: () {

                              },
                            ),
                          ),
                              // ElevatedButton(
                              //     style: ElevatedButton.styleFrom(
                              //
                              //       backgroundColor: Colors.deepOrangeAccent,
                              //     ),
                              //     onPressed:() {
                              //       Navigator.push(
                              //         context,
                              //         MaterialPageRoute(builder: (context) => Seller()),
                              //       );
                              //     },
                              //     // padding:EdgeInsets.all(20.0),
                              //     child:Text('Signup', style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
                              // )
                            ],
                          ),
                        ),

                      ]
                  ),
                ),
              ],),
          ),

        ));
  }
}
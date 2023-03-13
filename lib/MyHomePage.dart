/*HS*/
//Code for homePage

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:techteam/Contact.dart';
import 'Seller.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin  {

  //  final stt.SpeechToText _speech = stt.SpeechToText();
  //
  //
  // bool _isListening = false;
  // void _startListening() async {
  //   if (!_isListening) {
  //     bool available = await _speech.initialize(
  //       onStatus: (val) => print('onStatus: $val'),
  //       onError: (val) => print('onError: $val'),
  //     );
  //     if (available) {
  //       setState(() {
  //         _isListening = true;
  //       });
  //       _speech.listen(
  //         onResult: (val) => setState(() {
  //           _searchController.text = val.recognizedWords;
  //         }),
  //       );
  //     }
  //   } else {
  //     setState(() {
  //       _isListening = false;
  //       _speech.stop();
  //     });
  //   }
  // }

  late AnimationController _searchAnimationController =
  AnimationController(
    duration: const Duration(seconds: 1),
    reverseDuration: const Duration(seconds: 1),
    lowerBound: 0.0,
    upperBound: 1.0,
    vsync: this,
  )..repeat(reverse: true);


  // late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _searchAnimationController = AnimationController(
      vsync: this, // Pass 'this' as the vsync parameter
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _searchAnimationController.dispose();
    super.dispose();
  }
  //Export Images
  final List<String> imageList = [
    "A.png",
    "C.png",
    "CAC.png",
    "CAF.png",
    "DAC.png",
    "L.png",
    "TEP.png"
  ];
  final List<String> titles = [
    "Administration",
    "Commercialisation",
    "Consultant et Coach",
    "Compabilite et Finance",
    "Design et contenu",
    "Legal",
    "Technologie et programmation"
  ];
  TextEditingController textController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  bool isSearchFieldOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'logo.jpg',
            width: 32,
            height: 32,
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            "Technoteam.io",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.language,
              color: Colors.deepOrangeAccent,
            ),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),
      ),
      drawer: Drawer(
        //Drawer List
        child: ListView(
          children: [
            const DrawerHeader(child: Text('')),
            ListTile(
              title: const Text(
                'Become a Seller',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.sell_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Seller()),
                );
              },
            ),


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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contact()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Background images Nd Search BAr
            Stack(
              children: [
                Positioned(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSearchFieldOpen = !isSearchFieldOpen;
                      });
                      if (!isSearchFieldOpen) {
                        _searchController.clear(); // Clear the text
                        _searchFocusNode.unfocus(); // Remove the focus
                      }
                    },
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("bg.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          "Find experts ",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        Text(
                          "Freelance services",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "for your business",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                         SizedBox(
                          height: 10,
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     setState(() {
                        //       isSearchFieldOpen = !isSearchFieldOpen;
                        //     });
                        //     if (!isSearchFieldOpen) {
                        //       _searchController.clear(); // Clear the text
                        //       _searchFocusNode.unfocus(); // Remove the focus
                        //     }
                        //   },
                        //   child: AnimatedBuilder(
                        //     animation: _searchAnimationController,
                        //     builder: (context, child) {
                        //       return Transform.translate(
                        //         offset: Offset(
                        //           0.0,
                        //           -20.0 * (_searchAnimationController.value * 2 - 1).abs(),
                        //         ),
                        //         child: child,
                        //       );
                        //     },
                        //     child: Visibility(
                        //       visible: !isSearchFieldOpen,
                        //       child: const Icon(
                        //         Icons.search,
                        //         size: 60,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // GestureDetector(
                        //   onTap: () {
                        //     setState(() {
                        //       isSearchFieldOpen = !isSearchFieldOpen;
                        //     });
                        //     if (!isSearchFieldOpen) {
                        //       _searchController.clear(); // Clear the text
                        //       _searchFocusNode.unfocus(); // Remove the focus
                        //     }
                        //   },
                        //   child:
                        //       // Transform.scale(
                        //       //     scale: 1.8,
                        //       //     child: Image.asset('searchbar1-unscreen.gif',width: 60,height: 60,fit: BoxFit.cover,))
                        //       Visibility(
                        //     visible: !isSearchFieldOpen,
                        //     child: const Icon(
                        //       Icons.search,
                        //       size: 60,
                        //       color:
                        //       Colors.white,
                        //     ),
                        //   ),
                        // ),
                        // AnimatedContainer(
                        //   duration: const Duration(milliseconds: 300),
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 16.0, vertical: 25.0),
                        //     child: TextField(
                        //         controller: _searchController,
                        //         focusNode: _searchFocusNode,
                        //         decoration: isSearchFieldOpen
                        //             ?  const InputDecoration(
                        //                 filled: true,
                        //                 fillColor: Colors.white70,
                        //                 border: OutlineInputBorder(
                        //                   borderRadius: BorderRadius.all(
                        //                     Radius.circular(20.0),
                        //                   ),
                        //                   borderSide: BorderSide(
                        //                     color: Colors.black,
                        //                     width: 2.0,
                        //                   ),
                        //                 ),
                        //                 enabledBorder: OutlineInputBorder(
                        //                   borderRadius: BorderRadius.all(
                        //                     Radius.circular(20.0),
                        //                   ),
                        //                   borderSide: BorderSide(
                        //                     color: Colors.black,
                        //                     width: 2.0,
                        //                   ),
                        //                 ),
                        //                 focusedBorder: OutlineInputBorder(
                        //                   borderRadius: BorderRadius.all(
                        //                     Radius.circular(20.0),
                        //                   ),
                        //                   borderSide: BorderSide(
                        //                     color: Colors.black,
                        //                     width: 2.0,
                        //                   ),
                        //                 ),
                        //                 labelText:
                        //                     'What service are you looking for today?',
                        //                 labelStyle:
                        //                     TextStyle(color: Colors.black),
                        //           // suffixIcon: IconButton(onPressed: (){
                        //           //   _startListening();
                        //           // }, icon: Icon(_isListening ? Icons.mic : Icons.mic_none),)
                        //               )
                        //             : null),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
             const SizedBox(
                height: 50,
               child: Text(
                 "EXPERT CATEGORIES",
                 style: TextStyle(
                     color: Colors.black38,
                     fontSize: 35,
                     fontWeight: FontWeight.w300),
               )
              ),
              // child: AnimatedTextKit(
              //   animatedTexts: [
              //     TyperAnimatedText('EXPERT CATEGORIES',speed: const Duration(milliseconds: 100),
              //         textStyle: const TextStyle(
              //             color: Colors.black12,
              //             fontSize: 30,
              //         fontWeight: FontWeight.bold))
              //   ],
              // ),
            // ),
                // child: Text(
                //   "EXPERT CATEGORIES",
                //   style: TextStyle(
                //       color: Colors.black12,
                //       fontSize: 35,
                //       fontWeight: FontWeight.w900),
                // )),
            CarouselSlider.builder(
              itemCount: imageList.length,
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                enlargeCenterPage: true,
                height: 350,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                reverse: false,
                aspectRatio: 5.0,
                // onPageChanged:(){}
              ),
              itemBuilder: (context, i, id) {
                //for onTap to redirect to another screen
                return GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.black12,
                        )),
                    //ClipRRect for image border radius
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(children: [
                        Image.asset(
                          imageList[i],
                          height: 350,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Text(
                              titles[i],
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

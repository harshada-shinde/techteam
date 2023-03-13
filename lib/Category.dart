/*HS*/
//Code for Categories view in Gridview

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'Commercialisation.dart';
import 'DAC.dart';
import 'CEC.dart';
import 'CEF.dart';
import 'Administration.dart';
import 'Legal.dart';
import 'TEP.dart';
class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.category,size:32,color: Colors.black,),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Expert Categories",
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
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      'Language',
                      style: TextStyle(color: Colors.black54),
                    ),
                    leading: const Icon(Icons.language),
                    onTap: () {},
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
                    onTap: () {},
                  ),
                ],
              ),
            ),
          body:AnimationLimiter(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(7,(index) {
                if (index == 0) {
                  // Add a new element at index 0
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: 0,
                    position: index,
                    duration: const Duration(milliseconds: 575),
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Administration()),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  'A.png',
                                  height: 150,
                                ),
                                const Text(
                                  'Administration',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (index == 1) {
                  // Add a new element at index 1
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: 0,
                    position: index,
                    duration: const Duration(milliseconds: 575),
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Commercialisation()),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  'C.png',
                                  height: 150,
                                ),
                                const Text(
                                  'Commercialisation',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (index == 2) {
                  // Add a new element at index 2
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: 0,
                    position: index,
                    duration: const Duration(milliseconds: 575),
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const CEF()),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  'CAF.png',
                                  height: 150,
                                ),
                                const Text(
                                  'Comptabilité et Finance',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (index == 3) {
                  // Add a new element at index 3
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: 0,
                    position: index,
                    duration: const Duration(milliseconds: 575),
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const CEC()),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  'CAC.png',
                                  height: 150,
                                ),
                                const Text(
                                  'Consultant et Coach',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (index == 4) {
                  // Generate the other elements as before
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: 0,
                    position: index,
                    duration: const Duration(milliseconds: 575),
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const DAC()),
                            );
                          },
                          child: Card(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'DAC.png',
                                    height: 150,
                                  ),
                                  const Text(
                                    'Design et contenu',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (index == 5) {
                  // Generate the other elements as before
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: 0,
                    position: index,
                    duration: const Duration(milliseconds: 575),
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Legal()),
                            );
                          },
                          child: Card(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'L.png',
                                    height: 150,
                                  ),
                                  const Text(
                                    'Legal',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                      ),
                    ),
                  );
                }
                else {
                  // Generate the other elements as before
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: 0,
                    position: index,
                    duration: const Duration(milliseconds: 575),
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TEP()),
                            );
                          },
                          child: Card(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'TEP.png',
                                    height: 150,
                                  ),
                                  const Text(
                                    'Technologie et programmation',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                      ),
                    ),
                  );
                }
              }
              )
    )
    )
        )
    );
  }
}

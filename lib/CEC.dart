/*HS*/
//ListViewPage for CEC
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
//
// class CEC extends StatefulWidget {
//   const CEC({Key? key}) : super(key: key);
//
//   @override
//   State<CEC> createState() => _CECState();
// }
//
// class _CECState extends State<CEC> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children:[
//               Image.asset('CAC.png',width: 32,height: 32,),
//               const SizedBox(
//                 width: 8,
//               ),
//               const Text(
//                 "Consultant et Coach",
//                 style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               ),
//             ]
//         ),
//       ),
//       // drawer:  Drawer(
//       //   child: ListView(
//       //     children: [
//       //       const DrawerHeader(child: Text('')),
//       //       ListTile(
//       //         title: const Text(
//       //           'Become a Seller',
//       //           style: TextStyle(color: Colors.black54),
//       //         ),
//       //         leading: const Icon(Icons.sell_outlined),
//       //         onTap: () {},
//       //       ),
//       //       // ListTile(
//       //       //   title: const Text(
//       //       //     'Language',
//       //       //     style: TextStyle(color: Colors.black54),
//       //       //   ),
//       //       //   leading: const Icon(Icons.language),
//       //       //   onTap: () {},
//       //       // ),
//       //       ListTile(
//       //         title: const Text(
//       //           'Theme',
//       //           style: TextStyle(color: Colors.black54),
//       //         ),
//       //         leading: const Icon(Icons.mode),
//       //         onTap: () {},
//       //       ),
//       //       ListTile(
//       //         title: const Text(
//       //           'Contact us',
//       //           style: TextStyle(color: Colors.black54),
//       //         ),
//       //         leading: const Icon(Icons.info_outline),
//       //         onTap: () {},
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: AnimationConfiguration.toStaggeredList(
//               duration: const Duration(milliseconds: 275),
//               childAnimationBuilder: (widget) =>
//                   SlideAnimation(
//                     // horizontalOffset: 50.0,
//                     child: FadeInAnimation(
//                       child: widget,
//                     ),
//                   ),
//               children: [
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 70,
//                   child: Center(
//                     child: ListTile(
//                         leading: Image.asset("CAC.png",),
//                         title: const Text("Coach d'affaires", style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w400),),
//                         shape: const RoundedRectangleBorder()
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 70,
//                   child: Center(
//                     child: ListTile(
//                       leading: Image.asset("CAC.png"),
//                       title: const Text("Coach developpement personnel",
//                         style: TextStyle(fontSize: 20, color: Colors.black),),
//                       shape: const RoundedRectangleBorder(),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height:70 ,
//                   child: Center(
//                     child: ListTile(
//                       leading: Image.asset("CAC.png"),
//                       title: const Text("Consultant en TI",
//                         style: TextStyle(fontSize: 20, color: Colors.black),),
//                       shape: const RoundedRectangleBorder(),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 70,
//                   child: Center(
//                     child: ListTile(
//                       leading: Image.asset("CAC.png"),
//                       title: const Text("Consultant en gestion",
//                         style: TextStyle(fontSize: 20, color: Colors.black),),
//                       shape: const RoundedRectangleBorder(
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 70,
//                   child: Center(
//                     child: ListTile(
//                       leading: Image.asset("CAC.png"),
//                       title: const Text("Consultant en finance",
//                         style: TextStyle(fontSize: 20, color: Colors.black),),
//                       shape: const RoundedRectangleBorder(),
//                     ),
//                   ),
//                 ),
//
//
//               ]
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
class CEC extends StatefulWidget {
  const CEC({Key? key}) : super(key: key);

  @override
  State<CEC> createState() => _CECState();
}

class _CECState extends State<CEC> {
  final List<String> titles = [  'Coach d’affaires ',
    'Coach développement personnel',
    'Consultant en TI'
    ,'Consultant en gestion',
    'Consultant en finance',
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                // Image.asset('CAC.png',width: 32,height: 32,),
                const SizedBox(width: 8,),
                const Text("Consultant et Coach", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ]
          ),
          iconTheme: const IconThemeData(color: Colors.black),

        ),
        body: SingleChildScrollView(
            child: Column(
                children:AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 1275),
                    childAnimationBuilder: (widget) =>
                        SlideAnimation(
                          // horizontalOffset: 50.0,
                          child: FadeInAnimation(
                            child: widget,
                          ),
                        ),
                    children: [
                      ListTileTheme(
                        contentPadding: const EdgeInsets.all(15),
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: titles.length,
                              itemBuilder: (context, index) => Card(
                                margin: const EdgeInsets.all(10),
                                child: ListTile(
                                  leading: Container(
                                    width: 50.0,
                                    height: constraints.maxHeight,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                          color: Colors.grey,
                                          width: 1.0,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Image.asset(
                                      'CAC.png',

                                    ),
                                  ),
                                  title: Text(
                                    titles[index],
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300 ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                    ]
                )
            )
        )
    );
  }
}

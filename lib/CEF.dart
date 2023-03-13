/*HS*/
//ListView Page for CEF
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
//
// class CEF extends StatefulWidget {
//   const CEF({Key? key}) : super(key: key);
//
//   @override
//   State<CEF> createState() => _CEFState();
// }
//
// class _CEFState extends State<CEF> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children:[
//               Image.asset('CAF.png',width: 32,height: 32,),
//               const SizedBox(
//                 width: 8,
//               ),
//               const Text(
//                 "Comptabilite et Finance",
//                 style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               ),
//             ]
//         ),
//       ),
//       drawer:  Drawer(
//         child: ListView(
//           children: [
//             const DrawerHeader(child: Text('')),
//             ListTile(
//               title: const Text(
//                 'Become a Seller',
//                 style: TextStyle(color: Colors.black54),
//               ),
//               leading: const Icon(Icons.sell_outlined),
//               onTap: () {},
//             ),
//             // ListTile(
//             //   title: const Text(
//             //     'Language',
//             //     style: TextStyle(color: Colors.black54),
//             //   ),
//             //   leading: const Icon(Icons.language),
//             //   onTap: () {},
//             // ),
//             ListTile(
//               title: const Text(
//                 'Theme',
//                 style: TextStyle(color: Colors.black54),
//               ),
//               leading: const Icon(Icons.mode),
//               onTap: () {},
//             ),
//             ListTile(
//               title: const Text(
//                 'Contact us',
//                 style: TextStyle(color: Colors.black54),
//               ),
//               leading: const Icon(Icons.info_outline),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
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
//                         leading: Image.asset("CAF.png",),
//                         title: const Text("Comptabilite", style: TextStyle(
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
//                       leading: Image.asset("CAF.png"),
//                       title: const Text("Service de paie",
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
//                       leading: Image.asset("CAF.png"),
//                       title: const Text("Finance",
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
//                       leading: Image.asset("CAF.png"),
//                       title: const Text("Investisseur",
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
//                       leading: Image.asset("CAF.png"),
//                       title: const Text("Financement",
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
//                       leading: Image.asset("CAF.png"),
//                       title: const Text("Formation",
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
//                       leading: Image.asset("CAF.png"),
//                       title: const Text("Conseil",
//                         style: TextStyle(fontSize: 20, color: Colors.black),),
//                       shape: const RoundedRectangleBorder(
//                       ),
//                     ),
//                   ),
//                 ),
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
class CEF extends StatefulWidget {
  const CEF({Key? key}) : super(key: key);

  @override
  State<CEF> createState() => _CEFState();
}

class _CEFState extends State<CEF> {
  final List<String> titles = [  'Comptabilité ',
    'Service de paie',
    'Finance',
    'Investisseur',
    'Financement',
    'Formation',
    'Conseil',
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                // Image.asset('CAF.png',width: 32,height: 32,),
                const SizedBox(width: 8,),
                const Text("Comptabilité et Finance", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                                      'CAF.png',

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

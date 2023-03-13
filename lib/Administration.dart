// /*HS*/
// //Listviewpage for Administration
//
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
// import 'package:getwidget/getwidget.dart';
// class Administration extends StatefulWidget {
//   const Administration({Key? key}) : super(key: key);
//
//   @override
//   State<Administration> createState() => _AdministrationState();
// }
//
// class _AdministrationState extends State<Administration> {
//
//     @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children:[
//             Image.asset('A.png',width: 32,height: 32,),
//             const SizedBox(
//               width: 8,
//             ),
//             const Text(
//               "Administration",
//               style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//             ),
//           ]
//       ),
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
//                    height: 10,
//                 ),
//                 SizedBox(
//                   // height: 90,
//                   child: Center(
//                     child:
//                     Card(
//                       elevation: 5,
//                       child: Container(
//                         height: 100,
//                         child: ListTile(
//                           // tileColor: Colors.grey,
//                             leading: Image.asset("A.png",),
//                             title: const Text("Entree de donees", style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400),),
//                           shape:  RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(90),
//                           ),
//                           // contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
//                   ),
//                       ),
//                     ),
//                   //   Expanded(
//                   //     child: ListTile(
//                   //       leading:Image.asset('A.png'),
//                   //       title:const Text("Entree de donees", style: TextStyle(
//                   //           fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),) ,
//                   //
//                   //     ),
//                   //   ),
//
//                   ),
//                 ),
//
//
//                 SizedBox(
//                   height: 70,
//                   child: Center(
//                     child: ListTile(
//                       leading: Image.asset("A.png"),
//                       title: const Text("Administration generale",
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
//                       leading: Image.asset("A.png"),
//                       title: const Text("Adjoint(e)",
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
//                       leading: Image.asset("A.png"),
//                       title: const Text("Documentation",
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
//                       leading: Image.asset("A.png"),
//                       title: const Text("Recharge",
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
//                       leading: Image.asset("A.png"),
//                       title: const Text("Gestionare",
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
//                       leading: Image.asset("A.png"),
//                       title: const Text("Expert Excel",
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
//                       leading: Image.asset("A.png"),
//                       title: const Text("Redaction",
//                         style: TextStyle(fontSize: 20, color: Colors.black),),
//                       shape: const RoundedRectangleBorder(),
//                     ),
//                   ),
//                 ),
//               ]
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
class Administration extends StatefulWidget {
  const Administration({Key? key}) : super(key: key);

  @override
  State<Administration> createState() => _AdministrationState();
}

class _AdministrationState extends State<Administration> {
  final List<String> titles = [  'Entrée de données ',  'Administration générale','Adjoint(e)','Documentation','Recherche','Gestionnaire','Expert Excel','Rédaction','Traduction'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
                      // Image.asset('A.png',width: 32,height: 32,),
                      const SizedBox(width: 8,),
                      const Text("Administration", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                physics: const NeverScrollableScrollPhysics(),
                itemCount: titles.length,
                itemBuilder: (context, index) => Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Container(
                      width: 50.0,
                      height: constraints.maxHeight,
                      decoration: const BoxDecoration(
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
                        'A.png',

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

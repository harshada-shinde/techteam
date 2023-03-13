/*HS*/
// ListViewPage for Technologie et programmation

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
class TEP extends StatefulWidget {
  const TEP({Key? key}) : super(key: key);

  @override
  State<TEP> createState() => _TEPState();
}

class _TEPState extends State<TEP> {
  final List<String> titles = [  'Analytique de données ',
    'Développeur et programmeur',
    'Cyber-sécurité',
    'Réseautage et Téléphonie',
    'Chef de produit',
    'Chargé de projet',
    'Analyste d"affaires',
    'Prototype et modèle',
    'Assurance qualité'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                // Image.asset('TEP.png',width: 32,height: 32,),
                const SizedBox(width: 8,),
                const Text("Technologie et programmation", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                                      'TEP.png',

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

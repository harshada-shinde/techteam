/*HS*/
//Code for BottomBars
import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:techteam/Search.dart';
import 'Cart.dart';
import 'Account.dart';
import 'Category.dart';
import 'MyHomePage.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int index = 0;
  final items = [
    BottomBarItem(iconData: Icons.home),
    BottomBarItem(iconData: Icons.category),
    BottomBarItem(iconData: Icons.search),
    BottomBarItem(iconData: Icons.account_circle_outlined),
    BottomBarItem(iconData: Icons.shopping_cart),
  ];
  final List<Widget> _children = [
      const MyHomePage(),
     const Category(),
      const Search(),
    const LoginScreen(),
    const Cart(),
  ];
   // void onTappedBar(int currentIndex) {
   //   if (currentIndex != index) {
   //     if (currentIndex == 2) {
   //       Navigator.of(context).push(PageTransition(
   //         duration: Duration(milliseconds: 100),
   //         type: PageTransitionType.bottomToTop,
   //         child: Search(),
   //       ));
   //     } else {
   //       setState(() {
   //         index = currentIndex;
   //       });
   //     }
   //   }
   // }

   void onTappedBar(int currentIndex) {
    setState(() {
      index = currentIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: _children[index],
      bottomNavigationBar: items.isNotEmpty ? BottomBarBubble(
        color: Colors.deepOrangeAccent,
        selectedIndex: index,
        items: items,
        onSelect: onTappedBar,
      ) : null,
    )
    );
  }
}

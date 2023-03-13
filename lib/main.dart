import 'dart:async';

import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:connectivity/connectivity.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setTheme(ThemeData themeData) {}
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  late StreamSubscription<ConnectivityResult> subscription;

  void checkInternetConnectivity() {
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        print('Internet connected');
      } else {
        print('Internet disconnected');
      }
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkModeEnabled ? ThemeData.dark() : ThemeData.light(),
      // ThemeData(
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //   primary:  Colors.white,),
      // ),
       debugShowCheckedModeBanner: false,
       home: const HomePage(),
    );
  }
}


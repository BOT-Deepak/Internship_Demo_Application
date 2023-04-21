import 'package:aftgnpg/constants.dart';
import 'package:flutter/material.dart';
import 'mainpagecontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // Main Application starts bulding from here.
    return MaterialApp(

      // Removes the debug banner from top-right
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.purple,
      ).copyWith(primaryColor: darkThemeColor),

      // Calling mainController() so it can switch between bottom navigation tabs
      home: MainController(),
    );
  }
}
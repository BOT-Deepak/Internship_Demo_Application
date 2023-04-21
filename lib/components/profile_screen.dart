import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {

    // Screen for Profile Screen
    return Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}

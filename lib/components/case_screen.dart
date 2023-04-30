import 'package:flutter/material.dart';

class MyCaseScreen extends StatefulWidget {
  const MyCaseScreen({super.key});

  @override
  State<MyCaseScreen> createState() => _MyCaseScreenState();
}

class _MyCaseScreenState extends State<MyCaseScreen> {
  @override
  Widget build(BuildContext context) {

    // Screen for Case Screen
    return const Scaffold(
      body: Center(
        child: Text('Case'),
      ),
    );
  }
}

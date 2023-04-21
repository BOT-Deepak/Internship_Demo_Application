import 'package:flutter/material.dart';

class MyWalletScreen extends StatefulWidget {
  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Wallet'),
      ),
    );
  }
}

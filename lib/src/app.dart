import 'package:card_payment_ui/screens/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.purpleAccent
      ),
      title: "Card Payment UI",
      home: Home(),
    );
  }
}
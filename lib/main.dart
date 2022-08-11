import 'package:app_31/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ButtonApp());
}

class ButtonApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

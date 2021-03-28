import 'package:body_mass_index_calculator/widgets/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI DEMO',
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

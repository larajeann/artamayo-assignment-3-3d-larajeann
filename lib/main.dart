import 'package:alvaro_assignment3/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
 runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}
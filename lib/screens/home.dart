import 'package:alvaro_assignment3/components/questions.dart';
import 'package:alvaro_assignment3/components/title_home.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
   homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool play=false;

  void startplay(){
    setState(() {
       play=true;
    });
  }
void restart(){
    setState(() {
       play=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.touch_app_rounded),
        title: const Text("Trivia Quiz App"),
        backgroundColor: Colors.blue[200],
      ),
       backgroundColor: Colors.amber[500],
      body: play ? Questions(restart) : TitleHome(startplay),
    );
  }
}

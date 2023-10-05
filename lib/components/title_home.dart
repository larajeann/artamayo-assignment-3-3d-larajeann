
import 'package:alvaro_assignment3/main.dart';
import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
   TitleHome(this.startplay_call,{
    super.key,
  });

VoidCallback startplay_call;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[ 
        const SizedBox(height: 20,),
        const Text('Fun with Flags!', 
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 12, 63, 104),
           ),
          ),
           const SizedBox(height: 25,),
        Image.asset('assets/images/home.jpg'),
      
        const SizedBox(height: 22,),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal:12,
          ),
        child: ElevatedButton(onPressed: startplay_call,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          elevation: 5,
        ),
         child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Play',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 25,
            color: Colors.black),
               ),
          ],
        ),
          )
        )
        ]
    );
  }
}
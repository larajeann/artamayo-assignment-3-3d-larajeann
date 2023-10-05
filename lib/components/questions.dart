import 'package:alvaro_assignment3/data/questions_list.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
   Questions(this.restart,{super.key});

   VoidCallback restart;
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final questions_list = QuestionLists;
  final options_list = OptionLists;
  final answer_list = AnswerLists;
  final message_list = MessageList;


  int question_index = 0;
  bool isFinished=false;
  int score = 0;

  void CheckAnswer(String answer){
  setState(() {
      print(answer);
      score+=answer== answer_list
      [question_index] ? 1 : 0;
      if(question_index<questions_list.length-1){  
         question_index++;}
         else{
          isFinished=true;
         }
    });
  }

String showOptions (String select, int num ){
dynamic option = options_list[num];
  return option [select];
}

Widget ShowQuestions(){
  return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Text(questions_list[question_index],
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
           ),
          ),    
         const SizedBox(height: 22,),
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Text(questions_list[question_index]),
            
               ElevatedButton(onPressed: () => CheckAnswer('A'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Align(alignment: Alignment.centerLeft,
               child:  Text ('A. ${showOptions('a', question_index + 1 )}',
               style: TextStyle( fontSize: 20,color: Colors.black ),), ),),
              
              ElevatedButton(onPressed: () => CheckAnswer('B'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Align(alignment: Alignment.centerLeft,
               child:  Text ('B. ${showOptions('b', question_index + 1 )}',
               style: TextStyle( fontSize: 20,color: Colors.black ),), ),),
              
             
                ElevatedButton(onPressed: () => CheckAnswer('C'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
             child: Align(alignment: Alignment.centerLeft,
               child:  Text ('C. ${showOptions('c', question_index + 1 )}',
               style: TextStyle( fontSize: 20,color: Colors.black ),), ),),
              
               
                 ElevatedButton(onPressed: () => CheckAnswer('D'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Align(alignment: Alignment.centerLeft,
               child:  Text ('D. ${showOptions('d', question_index + 1 )}',
               style: TextStyle( fontSize: 20,color: Colors.black ),), ),),
        ],
          );
      
     
}

Widget ShowScores(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
       Text(message_list[score <= 5 ? 0 : score <= 8 ? 1 : 2],
      textAlign: TextAlign.center,
      style: TextStyle( 
        fontSize: 36,
        fontWeight: FontWeight.bold),),
      Text('$score/${questions_list.length}',
      textAlign: TextAlign.center,
      style: TextStyle( 
        fontSize: 36,
        fontWeight: FontWeight.bold),),
//for reset
    const SizedBox(height: 20,),
      Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal:12,
          ),
        child: ElevatedButton(onPressed:widget.restart,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          elevation: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Play Again',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black),
               ),
          ],
        ),
          )
        )//till here
    ],
  );
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Padding(
      padding: EdgeInsets.all(50.0),
      child: isFinished ? ShowScores() : ShowQuestions(),
      ),
    );
  }
}
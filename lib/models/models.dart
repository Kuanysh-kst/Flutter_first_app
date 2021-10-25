import 'package:flutter/cupertino.dart';

class Question {
  final int? id, answer;
  final String? question,ans;
  final List<String>? options;

  Question({this.id, this.question, this.answer, this.options,this.ans});
}

List<Question> sample_data = [  
  Question(
    
    answer: 1, 
    id: 1, 
    question: 'Flutter is an open-source UI software development kit created by __', 
    options: ['Apple', 'Google', 'Facebook', 'Microsoft'],
    ans: 'Apple'
    
  ),

 Question (  
     answer: 2,
     id: 2,
     question: "When google release Flutter.",
     options: ['Juna 2017', 'Jun 2017', 'May 2017', 'May 2018'],
     ans: 'Jun 2017'
     
     
     ),

     Question(
       id: 3,
       question: "A memory location that holds a single letter or number.",
       options: ['Double', 'Int', 'Char', 'Word'],
       answer: 2,
       ans: 'Int'
     ),
     Question(
       id: 4,
       question: "What command do you use to output data to the screen?",
       options: ['Cin', 'Count>>', 'Cout', 'Output>>'],
       answer: 2,
       ans: 'Count>>'
     ),
     Question(
       id: 5,
       question: "What command do you use to output data to the screen?",
       options: ['Cin', 'Count>>', 'Cout', 'Output>>'],
       answer: 2,
     ),
     

  
];

// {
//     "id": 2,
//     "question": "When google release Flutter.",
//     "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
//     "answer_index": 2,
//   },
//   {
//     "id": 3,
//     "question": "A memory location that holds a single letter or number.",
//     "options": ['Double', 'Int', 'Char', 'Word'],
//     "answer_index": 2,
//   },
//   {
//     "id": 4,
//     "question": "What command do you use to output data to the screen?",
//     "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
//     "answer_index": 2,
//   },
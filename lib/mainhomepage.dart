import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mysecondapp/allquiz.dart';
import 'package:mysecondapp/home.dart';

class generatorpage extends StatefulWidget {
   generatorpage({super.key});

  @override
  State<generatorpage> createState() => _HomePageState();
}

class _HomePageState extends State<generatorpage> {
  Random random =Random();

  List allsquiz=[];

  List aLists = allQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          ElevatedButton(onPressed: ()async {
            setState(() {
            generdquiz();
             
            });
              
         await  Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage(lists: [aLists]),));
          }, child:Text("bangala"))
        ],
      ),
    );
  }

  Future generdquiz ()async{
    for(int i =0 ; i <3 ; i++){
     List <Quiz> randomlist = aLists[random.nextInt(allQuiz.length)];
     allsquiz.add(randomlist);     
    }
  } 
}
// ignore_for_file: must_be_immutable, prefer_const_constructors, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:mysecondapp/allquiz.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainQuiz extends StatefulWidget {
  List<Answer> answerlist;
  MainQuiz({super.key, required this.answerlist});

  @override
  State<MainQuiz> createState() => _MainQuizState();
}

 SharedPreferences ?sharedPreferences;

var value = ["A", "B", "C", "d"];
int? selaction;
int score = 0;

class _MainQuizState extends State<MainQuiz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.answerlist.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () async {
              setState(() {
                selaction = index;

                if (widget.answerlist[index].isCorrect == true) {
                  score += 10;
                  print(score);
                }
              });
               sharedPreferences = await SharedPreferences.getInstance();
              sharedPreferences!.setString("name",score.toString());
             
             
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          radius: 17,
                          child: Text(
                            value[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          backgroundColor:
                              selaction == index ? Colors.amber : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(widget.answerlist[index].answer),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member


import 'package:flutter/material.dart';
import 'package:mysecondapp/allquiz.dart';
import 'package:mysecondapp/mainquize.dart';
import 'package:mysecondapp/resultscren.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive/hive.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

SharedPreferences? sharedPreferences;

String? value;
Box? allresult;

class _HomePageState extends State<HomePage> {
  @override
  savedata() async {
    sharedPreferences = await SharedPreferences.getInstance();
    value = sharedPreferences!.getString("name");
    allresult!.add(value);
    setState(() {});
  }

  @override
  void initState() {
    savedata();
    allresult = Hive.box("resultlist");
      
     
    
    // TODO: implement initState
    super.initState();
  }
    
    var resultList = allresult?.values.toList();


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: allQuiz.length,
              itemBuilder: (context, index) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        "${index + 1}${allQuiz[index].question}",
                        style: TextStyle(fontSize: 20),
                      ),
                      MainQuiz(
                        answerlist: allQuiz[index].answerList,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                savedata();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Resultpage(
                        oldResults:resultList!,
                      ),
                    ));
              },
              child: Text("submit")),
        ],
      ),
    );
  }
}

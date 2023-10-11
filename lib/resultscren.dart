// ignore_for_file: unused_import, depend_on_referenced_packages, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class Resultpage extends StatefulWidget {
  
  final List oldResults;
  Resultpage({super.key, required this.oldResults,});

  @override
  State<Resultpage> createState() => _SecondPageState();
}

class _SecondPageState extends State<Resultpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Screen'),
      ),
      body: Column(
        children: [
         
          Expanded(
            child: ListView.builder(
              itemCount: widget.oldResults.length,
              itemBuilder: (context, index) => Card(
                child: Container(
                  height: 100,
                  child: Text('${widget.oldResults}'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

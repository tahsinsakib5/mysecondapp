// import 'dart:math';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Random Strings'),
//         ),
//         body: RandomStringList(),
//       ),
//     );
//   }
// }

// class RandomStringList extends StatelessWidget {
//   final List<String> strings = ['à¦à¦', 'à¦¦à§à¦', 'à¦¤à¦¿à¦¨', 'à¦à¦¾à¦°', 'à¦ªà¦¾à¦à¦', 'à¦à¦¯à¦¼'];
//   final Random random = Random();

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: List.generate(3, (index) {
//           String randomString = strings[random.nextInt(6)];
//           return Text(
//             randomString,
//             style: TextStyle(fontSize: 24),
//           );
//         }),
//       ),
//     );
//   }
// }  
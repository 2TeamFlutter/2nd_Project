import 'package:flutter/material.dart';


import 'Entertainment/enter_1.dart';
import 'Entertainment/enter_2.dart';
import 'Entertainment/enter_3.dart';
import 'Gallery/gall_1.dart';
import 'Gallery/gall_2.dart';
import 'Gallery/gall_3.dart';
import 'Information/info_1.dart';
import 'Information/info_2.dart';
import 'Information/info_3.dart';
import 'Quiz/quiz_1.dart';
import 'Quiz/quiz_2.dart';
import 'Quiz/quiz_3.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/h',
      routes: {
        '/h' : (context) => Home(),
        // 수아님 : Information part.
        '/I1' : (context) => Info1(),
        '/I2' : (context) => Info2(),
        '/I3' : (context) => Info3(),
        // 상훈님 : Gallery part.
        '/G1' : (context) => Gall1(),
        '/G2' : (context) => Gall2(),
        '/G3' : (context) => Gall3(),
        // 창준님 : Quiz part.
        '/Q1' : (context) => Quiz1(),
        '/Q2' : (context) => Quiz2(),
        '/Q3' : (context) => Quiz3(),
        // 인환님 : Entertainment part.
        '/E1' : (context) => Enter1(),
        '/E2' : (context) => Enter2(),
        '/E3' : (context) => Enter3(),
      },
    );
  }
}

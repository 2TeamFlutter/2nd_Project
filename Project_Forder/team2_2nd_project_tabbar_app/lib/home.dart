import 'package:flutter/material.dart';

import 'Entertainment/enter_1.dart';
import 'Gallery/gall_1.dart';
import 'Information/info_1.dart';
import 'Quiz/quiz_1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: TabBarView(
        controller: tabController,
        children: [
          Info1(),
          Gall1(),
          Quiz1(),
          Enter1(),
        ]
      ),

      bottomNavigationBar: Container(
        color: Colors.black,
        height: 55,
        child: TabBar(
          controller: tabController,
          tabs: [
            Text("Info"),
            Text("Gall"),
            Text("Quiz"),
            Text("Enter"),
          ]
        ),
      ),
    );
  } // build
} // class
import 'dart:async';

import 'package:flutter/material.dart';

class Enter3 extends StatefulWidget {
  const Enter3({super.key});

  @override
  State<Enter3> createState() => _Enter3State();
}

class _Enter3State extends State<Enter3> {
  late int timeGoes;
  late Timer myTimer;
  late int speed;

  @override
  void initState() {
    super.initState();
    timeGoes = 0;
    speed = 0;

    myTimer= Timer.periodic(Duration(microseconds: 100000), (timer) {
      turnImage();
    },);
  }
    @override
  void dispose() {
    myTimer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('산책 갈 준비할까요?',
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        
      ),
      backgroundColor: const Color.fromARGB(255, 244, 237, 225),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(timeGoes/360),
                child: SizedBox(
                  height: 500,
                  width: 500,
                  child: Image.asset('images/image-1.png'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      speedButton();
                      setState(() {
                        
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    child: Text("빠르게", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      speedDown();
                      setState(() {
                        
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    child: Text("느리게", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  speedButton(){
    myTimer.cancel();
      speed-=1000;
    myTimer = Timer.periodic(Duration(microseconds: speed), (timer) {
      turnImage();
      setState(() {
      });
    },);}
  speedDown(){
    myTimer.cancel();
    speed +=1000;
    myTimer = Timer.periodic(Duration(microseconds: speed), (timer) {
      turnImage();
      setState(() {
      });
    },);}

  turnImage(){
    timeGoes++;
    setState(() {
      
    });
  }


  }

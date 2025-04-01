import 'dart:async';

import 'package:flutter/material.dart';

class Enter2 extends StatefulWidget {
  const Enter2({super.key});

  @override
  State<Enter2> createState() => _Enter2State();
}

class _Enter2State extends State<Enter2> {
  late List imageName;
  late int currentPage;
  late Timer myTimer;
  late int speed;

  @override
  void initState() {
    super.initState();
    imageName = [
      'image.png',
      'image copy 4.png',
      'image copy 3.png',
    ];
    currentPage = 0;
    speed = 100;

    myTimer= Timer.periodic(Duration(milliseconds: speed), (timer) {
      changeImage();
    },);
  }

  changeImage(){
    currentPage++;
    if(currentPage >= imageName.length){
      currentPage=0;
    }
    setState(() {
    });
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
              width: 300,
              height: 300,
              child: Image.asset(
                'images/${imageName[currentPage]}'
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/E3'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue,
                  minimumSize: Size(130, 40)
                ),
                child: Text("공원 가기", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  speedButton(){
    myTimer.cancel();
    if(speed>0){
      speed-=20;
    myTimer = Timer.periodic(Duration(milliseconds: speed), (timer) {
      changeImage();
      setState(() {
      });
    },);}
    else{
      myTimer = Timer.periodic(Duration(milliseconds: 100), (timer) {
        changeImage();
        setState(() {
          
        });
    },);
    }
  }
  speedDown(){
    myTimer.cancel();
    speed +=20;
    myTimer = Timer.periodic(Duration(milliseconds: speed), (timer) {
      changeImage();
      setState(() {
      });
    },);}
  }

import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Gall2 extends StatefulWidget {
  const Gall2({super.key});

  @override
  State<Gall2> createState() => _Gall2State();
}

class _Gall2State extends State<Gall2> {
  // property
  late List<String> imageFiles;
  late int currentPage;
  late int nextPage;

  @override
  void initState() {
    super.initState();

    imageFiles = [
      'illust01.png',
      'illust02.png',
      'illust03.jpg',
      'illust04.jpg',
      'illust05.jpg',
      'illust06.jpg',
      'illust07.png',
    ];

    currentPage = 0;
    nextPage = 1;
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('보더콜리 일러스트 이미지'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: SimpleGestureDetector(
        onHorizontalSwipe: (direction) => _onHorizontalSwipe(direction),
        onVerticalSwipe: (direction) => _onVerticalSwipe(direction),
        onDoubleTap: () => _onDoubleTap(),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                imageFiles[currentPage],
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
        
              Text(""),
        
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 0
                      )
                    ),
                    child: Image.asset(
                      'images/${imageFiles[currentPage]}',
                      fit: BoxFit.fill,
                      width: screenWidth - 50,
                      height: screenHeight - 450,
                    ),
                  ),
                ],
              ),

              Text(""),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/G1'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    child: Text('보더콜리 사진 보기'),
                  ),

                  Text("    "),
                  
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/G3'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    child: Text('보더콜리 성장기 보기'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  } // build
  // Function
  _onHorizontalSwipe(direction) {
    if(direction == SwipeDirection.left) {  // right to left
      currentPage++;
      if(currentPage >= imageFiles.length) {
        currentPage = 0;
      }
    }else{  // left to right
      currentPage--;
      if(currentPage < 0) {
        currentPage = imageFiles.length - 1;
      }
    }
    setState(() {});
  }

  _onVerticalSwipe(direction) {
    if(direction == SwipeDirection.up) {  // up to down
      currentPage++;
      if(currentPage >= imageFiles.length) {
        currentPage = 0;
      }
    }else{  // left to right
      currentPage--;
      if(currentPage < 0) {
        currentPage = imageFiles.length - 1;
      }
    }
    setState(() {});
  }

  _onDoubleTap() {
    currentPage++;
    if(currentPage >= imageFiles.length) {
      currentPage = 0;
    }
    setState(() {});
  }
} // class
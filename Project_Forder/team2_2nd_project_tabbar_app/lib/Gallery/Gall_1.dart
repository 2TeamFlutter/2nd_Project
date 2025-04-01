import 'package:flutter/material.dart';

class Gall1 extends StatefulWidget {
  const Gall1({super.key});

  @override
  State<Gall1> createState() => _Gall1State();
}

class _Gall1State extends State<Gall1> {
  // property
  late List<String> imageFiles;
  late int currentPage;
  late int nextPage;

  @override
  void initState() {
    super.initState();

    imageFiles = [
      'gallery01.jpg',
      'gallery02.jpg',
      'gallery03.jpg',
      'gallery04.png',
      'gallery05.png',
      'gallery06.png',
      'gallery07.jpg',
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
        title: Text('보더콜리 사진'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Center(
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
                      width: 10
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
                  onPressed: () => prevButton(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[300],
                    foregroundColor: Colors.black,
                  ),
                  child: Text('<< 이전')
                ),
                Text("        "),

                ElevatedButton(
                  onPressed: () => nextButton(screenWidth, screenHeight),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[300],
                    foregroundColor: Colors.black,
                  ),
                  child: Text('다음 >>')
                ),
              ],
            ),

            Text(""),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/G2'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  child: Text('보더콜리 일러스트 보기'),
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
    );
  } // build

  // --- Function ---
  prevButton() {
    currentPage--;
    if(currentPage < 0){
      currentPage = imageFiles.length - 1;
    }

    nextPage--;
    if(nextPage < 0 ) {
      nextPage = imageFiles.length - 1;
    }

    setState(() {});
  }

  nextButton(double screenWidth, double screenHeight) {
    print('$screenWidth, $screenHeight');
    currentPage++;
    if(currentPage >= imageFiles.length) {
      currentPage = 0;
    }

    nextPage++;
    if(nextPage >= imageFiles.length) {
      nextPage = 0;
    }

    setState(() {});
  }

} // class
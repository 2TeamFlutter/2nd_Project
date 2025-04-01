import 'package:flutter/material.dart';
import 'package:team2_2nd_project_tabbar_app2/Information/info_2.dart';
import 'package:team2_2nd_project_tabbar_app2/Information/info_3.dart';

class Info1 extends StatefulWidget {
  const Info1({super.key});

  @override
  State<Info1> createState() => _Info1State();
}

class _Info1State extends State<Info1> {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("보더콜리를 알아보자"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              child: Container(
                child: Image.asset('images/1234.png',
                width: 250,
                height: 350,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("📖 보더콜리란?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context){
            return Info2();
          }));
                  } , 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(120,40),
                  ),
                  child: Text('설명보러가기',
                  style: TextStyle(
                    color: Colors.white,

                  ),
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed:() {
                    
                    Navigator.push(context,MaterialPageRoute(builder: (context){
                      return Info3();
                        }));
                  } , 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(120, 40),
                  ),
              
                  child: Text('장단점',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}

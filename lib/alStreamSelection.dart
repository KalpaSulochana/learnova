import 'package:flutter/material.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/card.dart';

class alStreamSelectionScreen extends StatelessWidget {
  const alStreamSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          elevation: 100,
          title: Text(
            "Select Stream",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(children: [
          SizedBox(height: 30,),
          buildCommonCard(Icons.person ,"Combined Maths","past papers"),
          buildCommonCard(Icons.person ,"2027 A/L","past papers"),
          buildCommonCard(Icons.person ,"2027 A/L","past papers"),
          buildCommonCard(Icons.person ,"2027 A/L","past papers"),
          
          ],
          ),
      ),
    );
  }
}

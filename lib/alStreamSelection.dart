import 'package:flutter/material.dart';
import 'package:learnova/alMathsSubjects.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/card.dart';

class alStreamSelectionScreen extends StatelessWidget {
  const alStreamSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
          child: Column(children: [
            
            SizedBox(height: 10,),
            buildCommonCard(icon: Icons.functions, title: "Maths", subtitle: "subtitle", toPage: AlmathssubjectScreen(),)
            
            ],
            ),
        ),
      );
  }
}

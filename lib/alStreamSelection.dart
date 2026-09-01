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
            buildCommonCard(icon: Icons.functions, title: "Physical Science", subtitle: "Com Maths, Physics, Chemistry", toPage: AlmathssubjectScreen(),),
            buildCommonCard(icon: Icons.science, title: "Bio Science", subtitle: "Biology, Physics, Chemistry", toPage: AlmathssubjectScreen(),),
            buildCommonCard(icon: Icons.functions, title: "Commerce", subtitle: "Econ, BS, Accounting", toPage: AlmathssubjectScreen(),),
            buildCommonCard(icon: Icons.draw, title: "Arts", subtitle: "Languages, Social Sciensces", toPage: AlmathssubjectScreen(),),
            buildCommonCard(icon: Icons.functions, title: "Engineering Technology", subtitle: "ET, SFT, ICT", toPage: AlmathssubjectScreen(),),
            buildCommonCard(icon: Icons.functions, title: "Biosystem Technology", subtitle: "BST, SFT, ICT", toPage: AlmathssubjectScreen(),),
            
            ],
            ),
        ),
      );
  }
}

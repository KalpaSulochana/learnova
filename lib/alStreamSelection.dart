import 'package:flutter/material.dart';
import 'package:learnova/resources/Advanced%20Level/alMathsSubjects.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/card.dart';

class alStreamSelectionScreen extends StatelessWidget {
  const alStreamSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryBlue,
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              
              SizedBox(height: 10,),
              CommonCard(icon: Icons.functions, title: "Physical Science", subtitle: "Com Maths, Physics, Chemistry", toPage: AlmathssubjectScreen(),),
              CommonCard(icon: Icons.science, title: "Bio Science", subtitle: "Biology, Physics, Chemistry", toPage: AlmathssubjectScreen(),),
              CommonCard(icon: Icons.functions, title: "Commerce", subtitle: "Econ, BS, Accounting", toPage: AlmathssubjectScreen(),),
              CommonCard(icon: Icons.draw, title: "Arts", subtitle: "Languages, Social Sciensces", toPage: AlmathssubjectScreen(),),
              CommonCard(icon: Icons.functions, title: "Engineering Technology", subtitle: "ET, SFT, ICT", toPage: AlmathssubjectScreen(),),
              CommonCard(icon: Icons.functions, title: "Biosystem Technology", subtitle: "BST, SFT, ICT", toPage: AlmathssubjectScreen(),),
              
              ],
              ),
          ),
        ),
      );
  }
}

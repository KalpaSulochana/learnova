import 'package:flutter/material.dart';
import 'package:learnova/alMathsSubjects.dart';
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
        body: SingleChildScrollView(
          child: Column(children: [
            
            SizedBox(height: 10,),
            buildCommonCard(context, Icons.functions,"Physical Science","Combined Maths, Physics, Chemistry", AlmathssubjectScreen(),),
            buildCommonCard(context, Icons.science ,"Biological Science","Biology, Physics, Chemistry",AlmathssubjectScreen(),),
            buildCommonCard(context, Icons.calculate ,"Commerce","Accounting, BS, Economics",AlmathssubjectScreen(),),
            buildCommonCard(context, Icons.brush ,"Arts & Humanities","Languages, Social Sciences, Aesthetics",AlmathssubjectScreen(),),
            buildCommonCard(context, Icons.engineering ,"Engineering Technology","ET, SFT, ICT",AlmathssubjectScreen(),),
            buildCommonCard(context, Icons.biotech ,"Biosystem Technology","BST, SFT, Agriculture",AlmathssubjectScreen(),),
            
            ],
            ),
        ),
      ),
    );
  }
}

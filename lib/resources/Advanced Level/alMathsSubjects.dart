import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/resources/Advanced%20Level/Biological%20Science/Chemistry.dart';
import 'package:learnova/resources/Advanced%20Level/Biological%20Science/Physics.dart';
import 'package:learnova/resources/Advanced%20Level/Physical%20Science/CombinedMaths.dart';
import 'package:learnova/resources/Advanced%20Level/alEnglish.dart';
import 'package:learnova/resources/Advanced%20Level/Physical%20Science/ICT.dart';

class AlmathssubjectScreen extends StatelessWidget {
  const AlmathssubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryBlue,
        elevation: 100,
        title: Text(
            "Select Subject",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        //centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              buildCommonCard(
                icon: Icons.functions,
                title: "Combined Maths",
                subtitle: "Past Papers, ",
                toPage: AlCombinedMaths(),
              ),
              buildCommonCard(
                icon: Icons.functions,
                title: "Physics",
                subtitle: "Past Papers, Resource Books, etc...",
                toPage: AlPhysics(),
              ),
              buildCommonCard(
                icon: Icons.functions,
                title: "Chemistry",
                subtitle: "Past Papers, Resource Books, etc...",
                toPage: AlChemistry(),
              ),
              buildCommonCard(
                icon: Icons.functions,
                title: "ICT",
                subtitle: "Past Papers, Marking Schemes, etc...",
                toPage: AlICT(),
              ),
              /*buildCommonCard(
                icon: Icons.functions,
                title: "Higher Maths",
                subtitle: "Past Papers",
                toPage: AlHigherMaths(),
              ),*/
              buildCommonCard(
                icon: Icons.functions,
                title: "English",
                subtitle: "Past Papers, Books, etc...",
                toPage: AlEnglish(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

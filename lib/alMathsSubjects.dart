import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/resources/Advanced%20Level/Physical%20Science/CombinedMaths.dart';

class AlmathssubjectScreen extends StatelessWidget {
  const AlmathssubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 100,
        title: Text(
          "Select subject",
          style: TextStyle(color: primaryBlue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            buildCommonCard(
              icon: Icons.functions,
              title: "Combined Maths",
              subtitle: "all resources",
              toPage: combinedMaths(),
            ),
            buildCommonCard(
              icon: Icons.functions,
              title: "Combined Maths",
              subtitle: "all resources",
              toPage: combinedMaths(),
            ),
            buildCommonCard(
              icon: Icons.functions,
              title: "Combined Maths",
              subtitle: "all resources",
              toPage: combinedMaths(),
            ),
            buildCommonCard(
              icon: Icons.functions,
              title: "Combined Maths",
              subtitle: "all resources",
              toPage: combinedMaths(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/resources/Advanced%20Level/Biological%20Science/Agriculture.dart';
import 'package:learnova/resources/Advanced%20Level/Biological%20Science/Biology.dart';
import 'package:learnova/resources/Advanced%20Level/Biological%20Science/Chemistry.dart';
import 'package:learnova/resources/Advanced%20Level/Biological%20Science/Physics.dart';



class AlArtSubstreamScreen extends StatelessWidget {
  const AlArtSubstreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryBlue,
        elevation: 100,
        title: Text(
            "Select Sub Stream",
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
                title: "Arts",
                subtitle: "Art, Music, Drama, et...",
                toPage: AlBiology(),
              ),
              buildCommonCard(
                icon: Icons.functions,
                title: "Languages",
                subtitle: "Sinhala, English,etc...",
                toPage: AlPhysics(),
              ),
              buildCommonCard(
                icon: Icons.functions,
                title: "Religions",
                subtitle: "Buddhist Civilization, Buddhist, etc...",
                toPage: AlChemistry(),
              ),
              buildCommonCard(
                icon: Icons.functions,
                title: "Social Sciences",
                subtitle: "Geography, Logics, History, etc...",
                toPage: AlAgriculture(),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:learnova/alStreamSelection.dart';
import 'package:learnova/colors.dart';

class GradeSelectionScreen extends StatefulWidget {
  const GradeSelectionScreen({super.key});

  @override
  State<GradeSelectionScreen> createState() => _GradeSelectionScreenState();
}

class _GradeSelectionScreenState extends State<GradeSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 100,
        title: Text(
          "Select Grade",
          style: TextStyle(color: primaryBlue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- SENIOR SECONDARY ---
              //_buildSectionHeader("Senior Secondary", "O/L & A/L Preparation"),
              _buildSpecialCard(
                title: "Advanced Level",
                subtitle: "Syllabus, Notes, Papers, etc...",
                icon: Icons.school,
                toPage: alStreamSelectionScreen(),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(child: _buildGradeCard("10", "Grade 10")),
                  const SizedBox(width: 15),
                  Expanded(child: _buildGradeCard("11", "Grade 11")),
                ],
              ),
              const SizedBox(height: 15),

              // --- SECONDARY EDUCATION ---
              /*_buildSectionHeader(
                "Secondary Education",
                "Middle school (Grade 6 - 9)",
              ),*/
              Row(
                children: [
                  Expanded(child: _buildGradeCard("9", "Grade 9")),
                  const SizedBox(width: 15),
                  Expanded(child: _buildGradeCard("8", "Grade 8")),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(child: _buildGradeCard("7", "Grade 7")),
                  const SizedBox(width: 15),
                  Expanded(child: _buildGradeCard("6", "Grade 6")),
                ],
              ),
              const SizedBox(height: 15),

              // --- PRIMARY EDUCATION ---
              /*_buildSectionHeader(
                "Primary Education",
                "Foundation years (Grade 1 - 5)",
              ),*/
              _buildSpecialCard(
                title: "Grade 5 Scholarship",
                subtitle: "Syllabus, Notes, Papers, etc...",
                icon:Icons.emoji_events, // Changed icon to represent scholarship
                toPage: alStreamSelectionScreen(),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(child: _buildGradeCard("4", "Grade 4")),
                  const SizedBox(width: 15),
                  Expanded(child: _buildGradeCard("3", "Grade 3")),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(child: _buildGradeCard("2", "Grade 2")),
                  const SizedBox(width: 15),
                  Expanded(child: _buildGradeCard("1", "Grade 1")),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method for Section Headers
  /*Widget _buildSectionHeader(String title, String subtitle) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: primaryBlue,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: textLight,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
*/
  // Helper method for Special Full-Width Cards (A/L & Grade 5)
  Widget _buildSpecialCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Widget toPage,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => toPage),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: cardWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: primaryBlue.withOpacity(0.08),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
          border: Border.all(
            color: accentGold.withOpacity(0.3), // Subtle gold border
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [accentGold, Color(0xFFFFB020)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: accentGold.withOpacity(0.4),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(icon, color: Colors.white, size: 28),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: primaryBlue,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: textLight,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded, color: primaryBlue, size: 20),
          ],
        ),
      ),
    );
  }

  // Helper method for Individual Grade Grid Cards
  Widget _buildGradeCard(String number, String title, ) {
    return GestureDetector(
       onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: cardWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: primaryBlue.withOpacity(0.06),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          
          children: [
            SizedBox(width: 25,),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40,
                  width: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    color: primaryBlue,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: primaryBlue.withOpacity(0.3),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      number,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: textDark,
                  ),
                ),
                
               
              ],
            ),
      
            SizedBox(width: 20,),
             Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: primaryBlue,
                  size: 16,
                ),
          ],
        ),
      ),
    );
  }
}


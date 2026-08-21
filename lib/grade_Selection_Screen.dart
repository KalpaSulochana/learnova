import 'package:flutter/material.dart';

class GradeSelectionScreen extends StatefulWidget {
  const GradeSelectionScreen({super.key});

  @override
  State<GradeSelectionScreen> createState() => _GradeSelectionScreenState();
}

class _GradeSelectionScreenState extends State<GradeSelectionScreen> {
  String selectedGrade = "5"; // Changed default to match the string "5" (or "05" if you change the card below)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SingleChildScrollView(
        // Removed the conflicting 'Expanded' widget here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- TOP HEADER ---
          

            // --- MAIN CONTENT ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildSectionHeader(
                    "Senior Secondary",
                    "O/L & A/L Preparation",
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xffF8FAFC),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF0B0F17),
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF0B0F17),
                              width: 2,
                            ),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.school,
                            color: Color(0xFFF8FAFC),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Advanced Level",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0B0F17),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Syllabus, Notes, Papers, etc...",
                                style: TextStyle(
                                  color:   Color(0xFF0B0F17),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff2563EB),
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        child: _buildGradeCard("10", "Grade 10", ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: _buildGradeCard("11", "Grade 11", ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // --- SECONDARY EDUCATION ---
                  _buildSectionHeader(
                    "Secondary Education",
                    "Middle school (Grade 6 - 9)",
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: _buildGradeCard("9", "Grade 9", ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: _buildGradeCard("8", "Grade 8", ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: _buildGradeCard("7", "Grade 7", ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: _buildGradeCard("6", "Grade 6", ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // --- PRIMARY EDUCATION ---
                  _buildSectionHeader(
                    "Primary Education",
                    "Foundation years (Grade 1 - 5)",
                  ),
                  
                  // Grade 5 Special Scholarship Card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xffF8FAFC),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF0B0F17),
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF0B0F17),
                              width: 2,
                            ),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.school,
                            color: Color(0xFFF8FAFC),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Grade 5 scholorship",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0B0F17),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Syllabus, Notes, Papers, etc...",
                                style: TextStyle(
                                  color:   Color(0xFF0B0F17),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff2563EB),
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        child: _buildGradeCard("4", "Grade 4", ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: _buildGradeCard("3", "Grade 3", ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: _buildGradeCard("2", "Grade 2", ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: _buildGradeCard("1", "Grade 1", ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),

                
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for headers
  Widget _buildSectionHeader(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold, 
            color: Color(0xff0B0F17), // Added explicit white color
          ),
        ),
        const SizedBox(height: 2),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 13, color: Color.fromARGB(255, 71, 66, 66)),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  // Helper method for individual grade cards
  Widget _buildGradeCard(String number, String title) {
    bool isSelected = selectedGrade == number;

    return GestureDetector(
      onTap: () => setState(() => selectedGrade = number),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: const Color(0xFFF8FAFC),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            // Only show the yellow border if the card is currently selected
            color: isSelected ? const Color(0xFF0B0F17) : Color(0xff0B0F17),
            width: 2,
          ), 
        ),
        child: Row(
          
          children: [
            SizedBox(width: 39,),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xff0000ff)
                        :  Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Color(0xFF0B0F17)
                    )
                  ),
                  child: Text(
                    number,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 14,
                    color: Color(0xff0B0F17), // Added explicit white color
                  ),
                ),
                
              ],
            ),

            SizedBox(width: 10),

          const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff2563EB),
                          size: 16,
                        ),

          ],
        ),
      ),
    );
  }
}
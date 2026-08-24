import 'package:flutter/material.dart';
import 'package:learnova/colors.dart';

Widget buildCommonCard(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,),
      child: Container(
        //margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          boxShadow: [
              BoxShadow(
                color: primaryBlue.withOpacity(0.08),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          color: cardWhite, // Dark card background
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white.withOpacity(0.05)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            
            onTap: () {
              // Handle card tap
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // White rounded icon box
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: primaryBlue,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    alignment: Alignment.center,
                    child: Icon(icon , size: 40, color: cardWhite,),
                    
                    /*Text(
                      letter,
                      style: const TextStyle(
                        color: Color(0xFF1E88E5), // Blue text for letter
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),*/
                  ),
                  const SizedBox(width: 10),
                  // Texts
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style:  TextStyle(
                            color: textDark,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          subtitle,
                          style:  TextStyle(
                            color: textLight, // Subtle grey text
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Chevron icon
                   Icon(
                    Icons.chevron_right,
                    color: primaryBlue,
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


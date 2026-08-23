import 'package:flutter/material.dart';
import 'package:learnova/colors.dart';

Widget _buildStreamCard(String letter, String title, String subtitle, Icon iconData) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
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
            padding: const EdgeInsets.all(16.0),
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
                  child: Text(
                    letter,
                    style: const TextStyle(
                      color: Color(0xFF1E88E5), // Blue text for letter
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Texts
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: Color(0xFF8B95A5), // Subtle grey text
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                // Chevron icon
                const Icon(
                  Icons.chevron_right,
                  color: Color(0xFF8B95A5),
                  size: 28,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


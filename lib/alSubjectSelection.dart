import 'package:flutter/material.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/card.dart';

class alStreamSelectionScreen extends StatelessWidget {
  const alStreamSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The overall background uses a container with a gradient
      body: Container(
        decoration: const BoxDecoration(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBar(),
              _buildHeaderTexts(),
              const SizedBox(height: 20),
              _buildStreamList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Row(
        children: [
          const Icon(Icons.person, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            'hi',
            style: TextStyle(
              color: textDark,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.create_new_folder_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderTexts() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'Select Your Stream',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Advanced Level (A/L) Specialization',
            style: TextStyle(
              color: Color(0xFFA0ABC0), // Light greyish-blue
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStreamList() {
    // Data model for the list items
    final streams = [
      {
        'letter': 'P',
        'title': 'Physical Science',
        'subtitle': 'Combined Maths, Physics, Chemistry',
      },
      {
        'letter': 'B',
        'title': 'Biological Science',
        'subtitle': 'Biology, Physics, Chemistry',
      },
      {
        'letter': 'C',
        'title': 'Commerce',
        'subtitle': 'Accounting, Business, Economics',
      },
      {
        'letter': 'A',
        'title': 'Arts & Humanities',
        'subtitle': 'Languages, Social Sciences, Aesthetics',
      },
      {
        'letter': 'E',
        'title': 'Engineering Technology',
        'subtitle': 'ET, SFT, ICT',
      },
      {
        'letter': 'B',
        'title': 'Biosystems Technology',
        'subtitle': 'BST, SFT, Agriculture',
      },
    ];

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        itemCount: streams.length,
        itemBuilder: (context, index) {
          final stream = streams[index];
          return _buildStreamCard(
            stream['letter']!,
            stream['title']!,
            stream['subtitle']!,
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';

class higherMaths extends StatelessWidget {
  const higherMaths({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0, // Opens "Past Papers" by default
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: bgColor,
          elevation: 100,
          title: Text(
            "Select Stream",
            style: TextStyle(
              color: cardWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              
              // Unit Titles
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      'A/L Combined Maths',
                      style: TextStyle(
                        color: textDark
                        ,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                   
                    
                    Text(
                      'All resources',
                      style: TextStyle(
                        color: textLight,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
        
              const SizedBox(height: 5),
        
              // Tab Bar
              TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicatorColor: primaryBlue,
                indicatorWeight: 3.0,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: textDark,
                unselectedLabelColor: textLight,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                dividerColor: Colors.transparent,
                tabs: const [
                  Tab(text: 'Past Papers'),
                  Tab(text: 'Notes'),
                  Tab(text: 'Marking Schemes'),
                ],
              ),
        
              // Tab Views
               Expanded(
                child: TabBarView(
                  children: [
                    
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          buildCommonCard(context, Icons.assignment, "2025 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.list_alt, "2024 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.polymer, "2023 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.warning, "2022 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.quiz, "2021 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.quiz, "2020 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.quiz, "2019 A/L", "full past paper", combinedMaths()),
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        'Notes Content',
                        style: TextStyle(color: textDark, fontSize: 16),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          buildCommonCard(context, Icons.assignment, "2025 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.list_alt, "2024 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.polymer, "2023 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.warning, "2022 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.quiz, "2021 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.quiz, "2020 A/L", "full past paper", combinedMaths()),
                          buildCommonCard(context, Icons.quiz, "2019 A/L", "full past paper", combinedMaths()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
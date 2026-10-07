import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/pdfViewer.dart';

class AlCombinedMaths extends StatelessWidget {
  const AlCombinedMaths({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0, // Opens "Past Papers" by default
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryBlue,
          elevation: 100,
          title: Text(
            "Select resource",
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
              SizedBox(height: 10),

              // Unit Titles
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A/L Combined Maths',
                      style: TextStyle(
                        color: textDark,
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
                          SizedBox(height: 10),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2025 AL",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2025 AL Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/Combined%20Maths/Past%20Papers/2024-AL-COMBINED-MATHS-PART-I-SINHALA-MEDIUM-AlevelApi-PDF.pdf",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2025 AL",
                            subtitle: "full paper",
                            url:
                                "https://drive.google.com/file/d/1c59cQlvOChIFcrr3A9x5LrtmchbnVOTi/view?usp=sharing",
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2025 AL",
                            subtitle: "full paper",
                            url:
                                "https://drive.google.com/file/d/1c59cQlvOChIFcrr3A9x5LrtmchbnVOTi/view?usp=sharing",
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2025 AL",
                            subtitle: "full paper",
                            url:
                                "https://drive.google.com/file/d/1c59cQlvOChIFcrr3A9x5LrtmchbnVOTi/view?usp=sharing",
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2025 AL",
                            subtitle: "full paper",
                            url:
                                "https://drive.google.com/file/d/1c59cQlvOChIFcrr3A9x5LrtmchbnVOTi/view?usp=sharing",
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2025 AL",
                            subtitle: "full paper",
                            url:
                                "https://drive.google.com/file/d/1c59cQlvOChIFcrr3A9x5LrtmchbnVOTi/view?usp=sharing",
                          ),
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
                      child: Column(children: [SizedBox(height: 10)]),
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

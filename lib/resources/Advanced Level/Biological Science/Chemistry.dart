import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/pdf_viewer_page.dart';

class AlChemistry extends StatelessWidget {
  const AlChemistry({super.key});

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
            "Select Resource",
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
                      'A/L Chemistry',
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
                  Tab(text: 'Resource Books'),
      
                ],
              ),

              // Tab Views
              Expanded(
                child: TabBarView(
                  children: [


                    // past papers


                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2026 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2026-chemistry-past-papers-6a896c4816852.pdf",
                              title: "2026 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2025 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2025-chemistry-past-papers-6924222eafcdb.pdf",
                              title: "2025 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2024 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2024-chemistry-past-papers-67628ccb4d633.pdf",
                              title: "2024 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2023 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2023-chemistry-past-papers-65c310844273c.pdf",
                              title: "2023 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2022 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2022-chemistry-past-papers-63e5fc8861305.pdf",
                              title: "2022 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2021 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2021-chemistry-past-papers-62136a99c4b6f.pdf",
                              title: "2021 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2020 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2020-chemistry-past-papers-61cd8a68e54a7.pdf",
                              title: "2020 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2019 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2019-chemistry-past-papers-61c2eec924ab8.pdf",
                              title: "2019 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2018 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2018-chemistry-past-papers-61cd7bff2660a.pdf",
                              title: "2018 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2017 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2017-chemistry-past-papers-61c2c6a980662.pdf",
                              title: "2017 A/L Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.functions,
                            title: "2016 A/L",
                            subtitle: "fullPaper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/past%20papers/gce-advance-level-exam-2016-chemistry-past-papers-61d4121fc9900.pdf",
                              title: "2016 A/L Chemistry",
                            ),
                          ),
                          
                        ],
                      ),
                    ),


                    // resource books


                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "unit 1/2/3",
                            subtitle:
                                "Atomic Structure, Structure and Bonding and Chemical Calculations",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/resource%20books/AL%20Chemistry%20Resource%20Book%20Unit%201%2C2%2C3.pdf",
                              title:
                                  "Atomic Structure, Structure and Bonding and Chemical Calculations",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "unit 4/5",
                            subtitle: "Gaseous State of Matter and Energetics",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/resource%20books/AL%20Chemistry%20Resource%20Book%20Unit%204%2C5.pdf",
                              title: "Gaseous State of Matter and Energetics",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "unit 6",
                            subtitle: "Inorganic SPD",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/resource%20books/AL%20Chemistry%20Resource%20Book%20Unit%206.pdf",
                              title: "Inorganic Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "unit 7/8/9/10",
                            subtitle: "Organic Chemistry",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/resource%20books/AL%20Chemistry%20Resource%20Book%20Unit%207%2C8%2C9%2C10.pdf",
                              title: "Organic Chemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "unit 11/12/13",
                            subtitle:
                                "Chemical Kinetics, Equilibrium and  Electrochemistry",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/resource%20books/AL%20Chemistry%20Resource%20Book%20Unit%2011%2C12%2C13.pdf",
                              title:
                                  "Chemical Kinetics, Equilibrium and  Electrochemistry",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "unit 14",
                            subtitle:
                                "Industrial Chemistry and Environmental Pollution",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/resource%20books/AL%20Chemistry%20Resource%20Book%20Unit%2014.pdf",
                              title:
                                  "Industrial Chemistry and Environmental Pollution",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Practical Book",
                            subtitle: "Practical Hand Book",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/chemistry/resource%20books/sOMAL%20Chemistry%20Practical%20Hand%20book.pdf",
                              title: "Practical Hand Book",
                            ),
                          ),
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

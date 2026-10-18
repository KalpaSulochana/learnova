import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/pdf_viewer_page.dart';

class AlPhysics extends StatelessWidget {
  const AlPhysics({super.key});

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
                      'A/L Physics',
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
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2026 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2026-physics-past-papers-6a843a05178c1.pdf",
                              title: "2026 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2025 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2025-physics-past-papers-69e9f427b0aab.pdf",
                              title: "2025 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2024 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2024-political-science-past-papers-676a3702d479b.pdf",
                              title: "2024 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2023 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2023-physics-past-papers-65aa423ac98f8.pdf",
                              title: "2023 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2022 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2022-physics-past-papers-63ec5a66b06c4.pdf",
                              title: "2022 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2021 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2021-physics-past-papers-620ddfddecbe0.pdf",
                              title: "2021 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2020 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2020-physics-past-papers-61c40fb3da583.pdf",
                              title: "2020 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2019 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2019-physics-past-papers-61c411af7e413.pdf",
                              title: "2019 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2018 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2018-physics-past-papers-61cd7dc958a8c.pdf",
                              title: "2018 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2017 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2017-physics-past-papers-61c2cb6a25a61.pdf",
                              title: "2017 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2016 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2016-physics-past-papers-61c2c33281b06.pdf",
                              title: "2016 A/L Physics",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2015 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/past%20papers/gce-advance-level-exam-2015-physics-past-papers-61c2b89992d86.pdf",
                              title: "2015 A/L Physics",
                            ),
                          ),
                        ],
                      ),
                    ),

                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Unit 1/2",
                            subtitle: "Measurement And Mechanics",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/resource%20books/AL%20Physics%20Resource%20Book%20Unit%201%2C2.pdf",
                              title: "Measurement And Mechanics",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Unit 3",
                            subtitle: "Oscillations and Waves",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/resource%20books/AL%20Physics%20Resource%20Book%20Unit%203.pdf",
                              title: "Oscillations and Waves",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Unit 4",
                            subtitle: "Thermal Physics",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/resource%20books/AL%20Physics%20Resource%20Book%20Unit%204.pdf",
                              title: "Thermal Physics",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Unit 5/6/7/8",
                            subtitle: "Fields And Current Electricity",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/resource%20books/AL%20Physics%20Resource%20Book%20Unit%205%2C6%2C7%2C8.pdf",
                              title: "Fields And Current Electricity",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Unit 9",
                            subtitle: "Electronics",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/resource%20books/AL%20Physics%20Resource%20Book%20Unit%209.pdf",
                              title: "Electronics",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Unit 10",
                            subtitle: "Mechanical Properties of Matter",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/resource%20books/AL%20Physics%20Resource%20Book%20Unit%2010.pdf",
                              title: "Mechanical Properties of Matter",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Unit 11",
                            subtitle: "Matter and Radiation",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/resource%20books/AL%20Physics%20Resource%20Book%20Unit%2011.pdf",
                              title: "Matter and Radiation",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Practical Book",
                            subtitle: "All Practicals",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/physics/resource%20books/sALOM%20Physics%20-%20Practical%20HandBook.pdf",
                              title: "Practical Hand Book",
                            ),
                          ),
                        ],
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

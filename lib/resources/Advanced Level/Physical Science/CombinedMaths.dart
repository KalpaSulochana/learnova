import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/pdf_viewer_page.dart';

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
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2026 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2026 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2026-combined-mathematics-past-papers-6a7d1a880cf78.pdf",
                            ),
                          ),

                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2025 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2025 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2025-combined-mathematics-past-papers-69b283e8060d8.pdf",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2025 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2025 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2025-combined-mathematics-past-papers-69b283e8060d8.pdf",
                            ),
                          ),

                          buildCommonCard(
                         icon: Icons.picture_as_pdf_outlined,
                            title: "2024 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2024 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/2024-AL-Combined-Mathematics-Past-Paper-Sinhala-Medium-Past-Papers-wiki.pdf",
                            ),
                          ),

                          buildCommonCard(
                 icon: Icons.picture_as_pdf_outlined,
                            title: "2023 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2023 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2023-combined-mathematics-past-papers-659bb1d0e7d71.pdf",
                            ),
                          ),

                          buildCommonCard(
                         icon: Icons.picture_as_pdf_outlined,
                            title: "2022 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2022 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2022-combined-mathematics-past-papers-63ec6cd5bc2a8.pdf",
                            ),
                          ),

                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2021 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2021 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2021-combined-mathematics-past-papers-620dda3300e03.pdf",
                            ),
                          ),

                          buildCommonCard(
                        icon: Icons.picture_as_pdf_outlined,
                            title: "2020 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2020 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2020-combined-mathematics-past-papers-61cd96021667f.pdf",
                            ),
                          ),

                          buildCommonCard(
                         icon: Icons.picture_as_pdf_outlined,
                            title: "2019 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2019 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2019-combined-mathematics-past-papers-61c2f22f0244b.pdf",
                            ),
                          ),

                          buildCommonCard(
                        icon: Icons.picture_as_pdf_outlined,
                            title: "2018 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2018 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2018-combined-mathematics-past-papers-61cd7cf05cca0.pdf",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2017 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2017 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2017-combined-mathematics-past-papers-61c2c8023e3f1.pdf",
                            ),
                          ),

                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2016 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2016 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2016-combined-mathematics-past-papers-61c5ae15e892a.pdf",
                            ),
                          ),

                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2015 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2015 A/L Combined Maths",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/combineed%20Math/past%20papers/gce-advance-level-exam-2015-combined-mathematics-past-papers-61c2b52d2324e.pdf",
                            ),
                          ),
                          
                         //drive.google.com/file/d/1c59cQlvOChIFcrr3A9x5LrtmchbnVOTi/view?usp=sharing",
                          
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

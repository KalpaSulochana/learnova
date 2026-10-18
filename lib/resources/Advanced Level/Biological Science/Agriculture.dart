import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/pdf_viewer_page.dart';

class AlAgriculture extends StatelessWidget {
  const AlAgriculture({super.key});

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
              SizedBox(height: 10,),
              
              // Unit Titles
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      'A/L Agriculture',
                      style: TextStyle(
                        color: textDark
                        ,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                   
                    
                    Text(
                      'All Resources',
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
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2026 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2026-agricultural-science-past-papers-6a82e089a5230.pdf",
                              title: "2026 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2025 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2025-agricultural-science-past-papers-691b3c362e82e.pdf",
                              title: "2025 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2024 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2024-agricultural-science-past-papers-68afec91637b5.pdf",
                              title: "2024 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2023 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2023-agricultural-science-past-papers-65c323d501180.pdf",
                              title: "2023 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2022 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2022-agricultural-science-past-papers-6410072c40fa8.pdf",
                              title: "2022 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2021 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2021-agricultural-science-past-papers-63feec4995c8f.pdf",
                              title: "2021 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2020 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2020-agricultural-science-past-papers-61cd7fd7bf938.pdf",
                              title: "2020 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2019 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2019-agricultural-science-past-papers-61c2e982a6440.pdf",
                              title: "2019 A/L Agriculture",
                            ),
                          ),buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2018 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2018-agricultural-science-past-papers-61c2d1407fbb9.pdf",
                              title: "2018 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2017 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2017-agricultural-science-past-papers-61cd786697dbc.pdf",
                              title: "2017 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2016 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/past%20papers/gce-advance-level-exam-2016-agricultural-science-past-papers-61cd71f126efb.pdf",
                              title: "2016 A/L Agriculture",
                            ),
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
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          
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
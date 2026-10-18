import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/pdf_viewer_page.dart';

class AlICT extends StatelessWidget {
  const AlICT({super.key});

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
                      'A/L ICT',
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
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2026 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2026 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2026-information-and-communication-technology-ict-past-papers-6aabcee14c549.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2025 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2025 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2025-information-and-communication-technology-ict-past-papers-6967799ad4640.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2024 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2024 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2024-information-and-communication-technology-ict-past-papers-68b6857ab6ceb.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2023 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2023 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2023-information-and-communication-technology-ict-past-papers-65c313a7eb72c.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2022 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2022 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2022-information-and-communication-technology-ict-past-papers-63fedce0d0fa9.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2021 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2021 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2021-information-and-communication-technology-ict-past-papers-62417c9b250b1.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2020 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2020 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2020-information-and-communication-technology-ict-past-papers-68b6840a7a531.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2019 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2019 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2019-information-and-communication-technology-ict-past-papers-61c44f2049a83.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2018 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2018 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2018-information-and-communication-technology-ict-past-papers-61c453b4d0404.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2017 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2017 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2017-information-and-communication-technology-ict-past-papers-61c2ca8704089.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2016 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2016 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2016-information-and-communication-technology-ict-past-papers-61c454caee8b7.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2015 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2015 A/L ICT",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/Physical%20Science/ict/past%20papers/gce-advance-level-exam-2015-information-and-communication-technology-ict-past-papers-61c456d4524bc.pdf",
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
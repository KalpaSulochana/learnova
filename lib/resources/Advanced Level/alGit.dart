import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/pdf_viewer_page.dart';

class AlEnglish extends StatelessWidget {
  const AlEnglish({super.key});

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
                      'A/L GIT',
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
                  Tab(text: 'Books'),
                  
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
                            title: "2025 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2025 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/2025%20paper.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2024 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2024 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2024-english-past-papers-68ba8ac124d35.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2023 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2023 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2023-english-past-papers-65c317770fd55.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2022 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2022 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2022-english-past-papers-63fee700d96eb.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2021 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2021 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2021-english-past-papers-68ba8b167f411.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2020 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2020 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2020-english-past-papers-62664e10d42eb.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2019 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2019 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2019-english-past-papers-61c2f5c543131.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2018 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2018 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2018-english-past-papers-68ba8d1237fe2.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2017 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2017 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2017-english-past-papers-68ba9a6d8e58b.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2016 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2016 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2016-english-past-papers-68ba9aaed6f6f.pdf",
                            ),
                          ),
                          buildCommonCard(
                          icon: Icons.picture_as_pdf_outlined,
                            title: "2015 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              title: "2015 A/L English",
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/Past%20Papers/gce-advance-level-exam-2015-english-past-papers-68ba9af7eb90e.pdf",
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          buildCommonCard(
                            icon: Icons.auto_stories_sharp,
                            title: "Text Book",
                            subtitle: "General English Text Book",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/English/text%20books/grade-13-general-english-text-book-632aaa36244b3.pdf",
                              title: "General English Text Book",
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
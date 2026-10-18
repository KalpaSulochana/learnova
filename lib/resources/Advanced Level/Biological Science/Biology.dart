import 'package:flutter/material.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/pdf_viewer_page.dart';

class AlBiology extends StatelessWidget {
  const AlBiology({super.key});

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
                      'A/L Biology',
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
                          SizedBox(height: 10,),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2026 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2026-biology-past-papers-6a7b402edf1dc.pdf",
                              title: "2026 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2025 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2025-biology-past-papers-6911d378f40c8.pdf",
                              title: "2025 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2024 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2024-biology-past-papers-6745a1e7214a8.pdf",
                              title: "2024 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2023 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2023-biology-past-papers-659bb0fee9a2e.pdf",
                              title: "2023 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2022 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2022-biology-past-papers-63fee9a9abfa1.pdf",
                              title: "2022 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2021 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2021-biology-past-papers-620dd95e43429.pdf",
                              title: "2021 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2020 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2020-biology-past-papers-61cd83dc087b6.pdf",
                              title: "2020 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2019 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2019-biology-past-papers-61c2ed43f12d0.pdf",
                              title: "2019 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2018 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2018-biology-past-papers-61cd7b99a74cf.pdf",
                              title: "2018 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2017 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2017-biology-past-papers-61cd78ef07787.pdf",
                              title: "2017 A/L Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2016 A/L",
                            subtitle: "full paper",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/past%20papers/gce-advance-level-exam-2016-biology-past-papers-61cd734b434ea.pdf",
                              title: "2016 A/L Biology",
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
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 1",
                            subtitle: "Introduction to Biology",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2001-Introduction%20to%20Biology.pdf",
                              title: "Unit 01-Introduction to Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 2",
                            subtitle: "Chemical and cellular basis of life",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2002-Chemical%20and%20cellular%20basis%20of%20life.pdf",
                              title: "Unit 02-Chemical and cellular basis of life",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 3",
                            subtitle: "Evolution and diversity of organisms",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2003-Evolution%20and%20diversity%20of%20organisms.pdf",
                              title: "Unit 03-Evolution and diversity of organisms",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 4",
                            subtitle: "Introduction to Biology",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2004-Plant%20form%20and%20function.pdf",
                              title: "Unit 04-Plant form and function",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 5 - Part 1",
                            subtitle: "Animal form and function",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2005%20Part%201-Animal%20form%20and%20function.pdf",
                              title: "Unit 05-Animal form and function",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 5 - Part 2",
                            subtitle: "Animal form and function",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2005%20Part%202-Animal%20form%20and%20function.pdf",
                              title: "Unit 05-Animal form and function",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 6",
                            subtitle: "Genetics",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2006-Genetics.pdf",
                              title: "Unit 06-Genetics",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 7",
                            subtitle: "Molecular Biology and Recombinant DNA Technology",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2007-Molecular%20Biology%20and%20Recombinant%20DNA%20Technology.pdf",
                              title: "Unit 07-Molecular Biology and Recombinant DNA Technology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 8",
                            subtitle: "Environmental Biology",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2008-Environmental%20Biology.pdf",
                              title: "Unit 08-Environmental Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 9",
                            subtitle: "Microbiology",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2009-Microbiology.pdf",
                              title: "Unit 09-Microbiology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Unit 10",
                            subtitle: "Applied Biology",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/Unit%2010-Applied%20Biology.pdf",
                              title: "Unit 10-Applied Biology",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "Practical Book",
                            subtitle: "Practical Hand Book",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/biology/resource%20books/sALOM%20Biology%20Practical%20Handbook.pdf",
                              title: "Biology Practical Book",
                            ),
                          ),

                        ],
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
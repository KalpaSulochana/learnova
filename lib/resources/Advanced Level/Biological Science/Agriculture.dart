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
                  Tab(text: 'Marking Schemes' ),
                  Tab(text: 'Resource Books')
                 
                ],
              ),
        
              // Tab Views
               Expanded(
                child: TabBarView(
                  children: [
                    

                    //past papers


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

                    //marking schemes

                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2024 A/L",
                            subtitle: "Marking Scheme",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/marking%20schemes/2024%20marking.pdf",
                              title: "2024 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2023 A/L",
                            subtitle: "Marking Scheme",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/marking%20schemes/1753899812_agri%20marking%202023.pdf",
                              title: "2023 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2022 A/L",
                            subtitle: "Marking Scheme",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/marking%20schemes/1753898963_Agri%202022AL%20MARKING%20SCHEME.pdf",
                              title: "2022 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2021 A/L",
                            subtitle: "Marking Scheme",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/marking%20schemes/1753898754_2021%20AGRI%20Marking%20Scheme%20%20(2).pdf",
                              title: "2021 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2020 A/L",
                            subtitle: "Marking Scheme",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/marking%20schemes/agri%202020%20marking%20scheme%20.pdf",
                              title: "2020 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2017 A/L",
                            subtitle: "Marking Scheme",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/marking%20schemes/1753893999_2017_Agriculture_Marking.pdf",
                              title: "2017 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2016 A/L",
                            subtitle: "Marking Scheme",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/marking%20schemes/1753893867_2016_Agriculture_Marking.pdf",
                              title: "2016 A/L Agriculture",
                            ),
                          ),
                          buildCommonCard(
                            icon: Icons.picture_as_pdf_outlined,
                            title: "2015 A/L",
                            subtitle: "Marking Scheme",
                            toPage: PdfViewerPage(
                              pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/marking%20schemes/1753893601_2015_Agriculture_Marking.pdf",
                              title: "2015 A/L Agriculture",
                            ),
                          ),
                        ],
                      ),
                    ),

                    //resource books

                    SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),

                            buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Practical Book",
                              subtitle: "Practical Hand Book",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/sALOM%20Agri%20PracGuide.pdf",
                              title: "Agriculture Practical Book",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 1",
                              subtitle: "Contribution of Agriculture to the Development of Sri Lanka",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_1.pdf",
                              title: "Unit 1: Contribution of Agriculture to the Development of Sri Lanka",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 2",
                              subtitle: "Agro-Climatic Factors & Management",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_2.pdf",
                              title: "Unit 2: Agro-Climatic Factors & Management",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 3",
                              subtitle: "Soil Science & Soil Health",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_3.pdf",
                              title: "Unit 3: Soil Science & Soil Health",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 4",
                              subtitle: "Plant Nutrition & Fertilizer Strategies",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_4.pdf",
                              title: "Unit 4: Plant Nutrition & Fertilizer Strategies",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 5",
                              subtitle: "Land Preparation & Crop Establishment",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_5.pdf",
                              title: "Unit 5: Land Preparation & Crop Establishment",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 66",
                              subtitle: "Irrigation and Drainage Methods",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_6.pdf",
                              title: "Unit 6: Irrigation and Drainage Methods",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 7",
                              subtitle: "Plant Physiology & Crop Growth",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_7.pdf",
                              title: "Unit 7: Plant Physiology & Crop Growth",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 8",
                              subtitle: "Plant Propagation Methods",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_8.pdf",
                              title: "Unit 8: Plant Propagation Methods",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 9",
                              subtitle: "Plant Breeding & Crop Improvement",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_9.pdf",
                              title: "Unit 9: Plant Breeding & Crop Improvement",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 10",
                              subtitle: "Controlled Environments & Soilless Culture",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_10.pdf",
                              title: "Unit 10: Controlled Environments & Soilless Culture",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 11",
                              subtitle: "Pest Management (IPM)",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_11.pdf",
                              title: "Unit 11: Pest Management (IPM)",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 12",
                              subtitle: "Food Safety and Quality Standards",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_12.pdf",
                              title: "Unit 12: Food Safety and Quality Standards",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 13",
                              subtitle: "Quality Food Consumption & Nutrition",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_13.pdf",
                              title: "Unit 13: Quality Food Consumption & Nutrition",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 14",
                              subtitle: "Pre Harvest and Post Harvest Techniques",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_14.pdf",
                              title: "Unit 14: Pre Harvest and Post Harvest Techniques",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 15",
                              subtitle: "Animal Husbandry & Livestock Management",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_15.pdf",
                              title: "Unit 15: Animal Husbandry & Livestock Management",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 16",
                              subtitle: "Agricultural Economics & Agribusiness",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_16.pdf",
                              title: "Unit 16: Agricultural Economics & Agribusiness",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 17",
                              subtitle: "Sustainable Agriculture",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_17.pdf",
                              title: "Unit 17: Sustainable Agriculture",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 18",
                              subtitle: "Health, Safety, and Agricultural Risks",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_18.pdf",
                              title: "Unit 18: Health, Safety, and Agricultural Risks",
                                ),
                              ),
                              buildCommonCard(
                              icon: Icons.picture_as_pdf_outlined,
                              title: "Unit 19",
                              subtitle: "Overcoming Agricultural Challenges",
                              toPage: PdfViewerPage(
                                pdfUrl:
                                  "https://pub-443fa50336f24320a9b73edc71de97e6.r2.dev/AL/bio%20science/agri/resource%20books/Agriculture_Resource_Book_Unit_19.pdf",
                              title: "Unit 19: Overcoming Agricultural Challenges",
                                ),
                              ),
                              
                            ],
                          ),
                    )

                    
                    
                    
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
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/static/app_color.dart';
import '../models/static/career_response.dart';
import '../utils/providers/generated_career_provider.dart';
import '../utils/providers/quiz_summary_provider.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/career_card.dart';
import '../widgets/quiz_app_bar.dart';
import 'cargen_screens/skeleton_loader.dart';

class CareerResultScreen extends ConsumerStatefulWidget {

  
  const CareerResultScreen({super.key});

  @override
  ConsumerState<CareerResultScreen> createState() {
    return _CareerResultPageState();
  }
}

class _CareerResultPageState extends ConsumerState<CareerResultScreen> {
  @override
  Widget build(BuildContext context) {

    Future<CareerResponse?> analysisFuture = Future.value(null);
    bool hasCompletedQuiz = ref.watch(quizSummaryNotifierProvider).isCompleted;
    
    if (hasCompletedQuiz == true) {
      analysisFuture = ref.read(generatedCareerNotifierProvider.notifier).getState();
    }
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: QuizAppBar(),
      bottomNavigationBar: BottomNavBar(ref: ref),

      body: Stack(
        children: [
          Image.asset('assets/header_bg.png'),

          Padding(
            padding: EdgeInsets.fromLTRB(26, 120, 26, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Top\nCareer Matches',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    fontSize: 38,
                    color: AppColor.textWhite,
                  ),
                ),

                SizedBox(height: 14),

                Text(
                  textAlign: TextAlign.left,
                  'Mapping Your Strengths to In-Demand Roles',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColor.textWhite,
                  ),
                ),

                SizedBox(height: 60),

                if (hasCompletedQuiz == true) ... [
                  Expanded(
                    child: FutureBuilder<CareerResponse?>(
                      future: analysisFuture,
                      builder: (context, snapshot) {
                        
                        // STATE 1: LOADING
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const SkeletonLoader();
                        }
                    
                        // STATE 2: ERROR
                        if (snapshot.hasError || snapshot.data == null) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                                const SizedBox(height: 16),
                                const Text("Could not analyze profile."),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      analysisFuture = ref.read(generatedCareerNotifierProvider.notifier).getState();
                                    });
                                  },
                                  child: const Text("Try Again"),
                                )
                              ],
                            ),
                          );
                        }
              
                        // STATE 3: SUCCESS (DISPLAY DATA)
                        final data = snapshot.data!;
                      
                        return ListView(
                          padding: const EdgeInsets.all(0),
                          children: [
                            Text(
                              "Archetype:",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                color: AppColor.textBlack,
                              ),
                            ),

                            Text(
                              data.userArchetype,
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                color: Color(0xFF3064E8),
                              ),
                            ),

                            SizedBox(height: 12,),

                            Text(
                              data.profileAnalysis,
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColor.textBlack,
                                height: 1.4
                              ),
                            ),
                                    
                            const SizedBox(height: 24),

                            Text(
                              "Top Recommendations",
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: AppColor.textBlack,
                                ),
                              ),

                            const SizedBox(height: 16),
                    
                            // 2. Career Cards List
                            ...data.recommendedCareers.map((career) => CareerCard(career: career)),
                          ],
                        );
                      },
                    ),
                  ),
                ] else ... [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.error_outline, size: 48, color: Colors.red),
                        const SizedBox(height: 16),
                        const Text("Please answer the Skill Assessment Quiz first."),
                      ],
                    ),
                  )
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
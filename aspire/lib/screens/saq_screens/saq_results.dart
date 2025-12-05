import 'package:aspire/models/static/named_routes.dart';
import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:aspire/widgets/quiz_button.dart';
import 'package:aspire/widgets/saq_analysis_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/providers/quiz_summary_provider.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../models/static/app_color.dart';

class SaqResults extends ConsumerStatefulWidget {
  const SaqResults({super.key});

  @override
  ConsumerState<SaqResults> createState() {
    return _SaqResultsState();
  }
}

class _SaqResultsState extends ConsumerState<SaqResults> {
  @override
  Widget build(BuildContext context) {
    final quizSummary = ref.watch(quizSummaryNotifierProvider);

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
                  'Skill Assessment Quiz Analysis',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    fontSize: 38,
                    color: AppColor.textWhite,
                  ),
                ),

                SizedBox(height: 14),

                Text(
                  textAlign: TextAlign.left,
                  'Your Personalized Profile and Insights',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColor.textWhite,
                  ),
                ),

                SizedBox(height: 60),

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          'Section 1: Interests',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: AppColor.textBlack,
                          ),
                        ),

                        SizedBox(height: 12),

                        Text(
                          textAlign: TextAlign.left,
                          'This section measures your alignment with the six main career types (Realistic, Investigative, Artistic, Social, Enterprising, Conventional). Your highest scores highlight the environments and activities where you will feel most engaged, motivated, and satisfied.',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.textGreyGrey,
                          ),
                        ),

                        SizedBox(height: 12),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SaqAnalysisCard(imagePath: quizSummary.dominantInterest1ImagePath, title: quizSummary.dominantInterest1Trait),

                            SizedBox(width: 20,),

                            SaqAnalysisCard(imagePath: quizSummary.dominantInterest2ImagePath, title: quizSummary.dominantInterest2Trait),
                          ],
                        ),

                        SizedBox(height: 18),

                        Text(
                          textAlign: TextAlign.left,
                          'Section 2: Skills and\nAptitudes',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: AppColor.textBlack,
                          ),
                        ),

                        SizedBox(height: 12),

                        Text(
                          textAlign: TextAlign.left,
                          'These are your most highly developed abilities and skills, measured on a scale of 1 to 5. Knowing your core strengths is vital for finding roles where you can be immediately effective and add the greatest value.',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.textGreyGrey,
                          ),
                        ),

                        SizedBox(height: 12),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SaqAnalysisCard(imagePath: quizSummary.keyStrength1ImagePath, title: quizSummary.keyStrength1Trait),

                            SizedBox(width: 20,),

                            SaqAnalysisCard(imagePath: quizSummary.keyStrength2ImagePath, title: quizSummary.keyStrength2Trait),
                          ],
                        ),

                        SizedBox(height: 18),

                        Text(
                          textAlign: TextAlign.left,
                          'Section 3: Work Values',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: AppColor.textBlack,
                          ),
                        ),

                        SizedBox(height: 12),

                        Text(
                          textAlign: TextAlign.left,
                          'Your Core Values represent the fundamental priorities you seek in any job or company. These are the aspects, such as income, independence, or status, that must be met for you to feel fulfilled in your career.',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.textGreyGrey,
                          ),
                        ),

                        SizedBox(height: 12),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SaqAnalysisCard(imagePath: quizSummary.coreValue1ImagePath, title: quizSummary.coreValue1Trait),

                            SizedBox(width: 20,),

                            SaqAnalysisCard(imagePath: quizSummary.coreValue2ImagePath, title: quizSummary.coreValue2Trait),
                          ],
                        ),

                        SizedBox(height: 18),

                        Text(
                          textAlign: TextAlign.left,
                          'Section 4: Personality and\nWork Style',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: AppColor.textBlack,
                          ),
                        ),

                        SizedBox(height: 12),

                        Text(
                          textAlign: TextAlign.left,
                          'Work Style describes your preferences regarding tasks, pace, and environment. Understanding this helps you seek out daily work conditions and company cultures that naturally boost your comfort, focus, and productivity.',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.textGreyGrey,
                          ),
                        ),

                        SizedBox(height: 12),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SaqAnalysisCard(imagePath: quizSummary.workValueImagePath1, title: quizSummary.workValueTitle1),

                            SizedBox(width: 20,),

                            SaqAnalysisCard(imagePath: quizSummary.workValueImagePath2, title: quizSummary.workValueTitle2),
                          ],
                        ),

                        SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),

                QuizButton(
                  text: "Retake Quiz",
                  buttonFunction: () {
                    Navigator.pushNamed(
                      context,
                      NamedRoutes.saqInterestsHomescreen,
                      // NamedRoutes.saqResultsScreen,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

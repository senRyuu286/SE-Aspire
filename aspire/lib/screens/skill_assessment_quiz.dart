import 'package:aspire/models/static/named_routes.dart';
import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:aspire/widgets/quiz_button.dart';
import 'package:aspire/widgets/quiz_section_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/static/app_color.dart';
import '../widgets/bottom_nav_bar.dart';

class SkillAssessmentQuiz extends ConsumerStatefulWidget {
  const SkillAssessmentQuiz({super.key});

  @override
  ConsumerState<SkillAssessmentQuiz> createState() {
    return _SkillAssessmentQuizState();
  }
}



class _SkillAssessmentQuizState extends ConsumerState<SkillAssessmentQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: QuizAppBar(),
      bottomNavigationBar: BottomNavBar(ref: ref,),
      
      body: Stack(
        children: [
          Image.asset('assets/header_bg.png'),
      
          Padding(
            padding: EdgeInsets.fromLTRB(26, 120, 26, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skill Assessment Quiz',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800, 
                    fontSize: 38, 
                    color: AppColor.textWhite,),
                ),

                SizedBox(height: 14,),

                Text(
                  textAlign: TextAlign.left,
                  'Discover Your Perfect Career Match',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w500, 
                    fontSize: 16, 
                    color: AppColor.textWhite,),
                ),

                SizedBox(height: 46,),

                SizedBox(
                  width: 280,
                  child: Text(
                    textAlign: TextAlign.left,
                    'This assessment evaluates you across four key dimensions:',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w400, 
                      fontSize: 14, 
                      color: AppColor.textGreyGrey,),
                  ),
                ),

                Expanded(
                  child: GridView.count(
                    padding: EdgeInsets.only(top: 14),
                    mainAxisSpacing: 18,
                    crossAxisSpacing: 18,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, NamedRoutes.saqInterestsHomescreen);
                        },
                        child: QuizSectionCard(imagePath: 'assets/interests.png', title: 'Interests', numOfQuestions: 30,),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, NamedRoutes.saqSkillsAndAptitudesHomescreen);
                        },
                        child: QuizSectionCard(imagePath: 'assets/skillsandaptitudes.png', title: 'Skills & Aptitudes', numOfQuestions: 8,),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, NamedRoutes.saqWorkValuesHomescreen);
                        },
                        child: QuizSectionCard(imagePath: 'assets/balance.png', title: 'Work Values', numOfQuestions: 7,),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, NamedRoutes.saqPersonalityAndWorkstyleHomescreen);
                        },
                        child: QuizSectionCard(imagePath: 'assets/personality.png', title: 'Personality & Work Style', numOfQuestions: 4,),
                      ),
                    ],
                  ),
                ),
                QuizButton(text: "Start Quiz", 
                buttonFunction: () {
                  Navigator.pushNamed(context, NamedRoutes.saqInterestsHomescreen);
                },),
              ],
            ),
          ),
        ],
      )
    );
  }
}
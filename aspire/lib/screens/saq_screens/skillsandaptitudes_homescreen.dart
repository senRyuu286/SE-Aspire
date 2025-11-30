import 'package:aspire/widgets/quiz_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/static/app_color.dart';
import '../../models/static/named_routes.dart';
import '../../widgets/bottom_nav_bar.dart';

class SkillsandaptitudesHomescreen extends ConsumerStatefulWidget {
  const SkillsandaptitudesHomescreen({super.key});

  @override
  ConsumerState<SkillsandaptitudesHomescreen> createState() {
    return _SkillsandaptitudesHomescreenState();
  }
}

class _SkillsandaptitudesHomescreenState extends ConsumerState<SkillsandaptitudesHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(ref: ref,),
      
      body: Column(
        children: [
          Image.asset('assets/skillsandaptitudes_heropage.png'),

          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(26, 34, 26, 26),
              child: Column(
                children: [
                  Text(
                    'Section 2: Skills & Aptitudes',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700, 
                      fontSize: 20, 
                      color: AppColor.textBlack,
                    ),
                  ),
            
                  SizedBox(height: 18,),
            
                  Text(
                    textAlign: TextAlign.center,
                    '"Define what you excel at."\n Assess your natural talents and technical abilities to highlight the tasks where you perform your best.',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, 
                      fontSize: 16, 
                      color: AppColor.textGrey,
                    ),
                  ),
            
                  SizedBox(height: 26,),

                  Spacer(),
            
                  QuizButton(text: "Get Started", 
                  buttonFunction: () {
                    Navigator.pushNamed(context, NamedRoutes.saqSkillsAndAptitudesQuizscreen);
                  },),
                ],
              ),  
            ),
          ),
        ],
      )
    );
  }
}
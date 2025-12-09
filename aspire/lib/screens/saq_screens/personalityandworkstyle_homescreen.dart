import 'package:aspire/widgets/quiz_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/static/app_color.dart';
import '../../models/static/named_routes.dart';
import '../../widgets/bottom_nav_bar.dart';

class PersonalityandworkstyleHomescreen extends ConsumerStatefulWidget {
  const PersonalityandworkstyleHomescreen({super.key});

  @override
  ConsumerState<PersonalityandworkstyleHomescreen> createState() {
    return _PersonalityandworkstyleHomescreenState();
  }
}

class _PersonalityandworkstyleHomescreenState extends ConsumerState<PersonalityandworkstyleHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(ref: ref,),
      
      body: Column(
        children: [
          Image.asset('assets/personalityandworkstyle_heropage.png'),

          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(26, 34, 26, 26),
              child: Column(
                children: [
                  Text(
                    'Section 4: Personality & Work Style',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700, 
                      fontSize: 20, 
                      color: AppColor.textBlack,
                    ),
                  ),
            
                  SizedBox(height: 18,),
            
                  Text(
                    textAlign: TextAlign.center,
                    '"Understand how you fit."\n Analyze your preferred work environment, decision-making style, and how you collaborate with others.',
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
                    Navigator.pushNamed(context, NamedRoutes.saqPersonalityAndWorkstyleQuizscreen);
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
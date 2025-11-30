import 'package:aspire/widgets/quiz_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/static/app_color.dart';
import '../../models/static/named_routes.dart';
import '../../widgets/bottom_nav_bar.dart';

class InterestsHomescreen extends ConsumerStatefulWidget {
  const InterestsHomescreen({super.key});

  @override
  ConsumerState<InterestsHomescreen> createState() {
    return _InterestsHomescreenState();
  }
}

class _InterestsHomescreenState extends ConsumerState<InterestsHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(ref: ref,),
      
      body: Column(
        children: [
          Image.asset('assets/interests_heropage.png'),

          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(26, 34, 26, 26),
              child: Column(
                children: [
                  Text(
                    'Section 1: Interests',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700, 
                      fontSize: 20, 
                      color: AppColor.textBlack,
                    ),
                  ),
            
                  SizedBox(height: 18,),
            
                  Text(
                    textAlign: TextAlign.center,
                    '"Discover what you love."\n Identify the activities, topics, and hobbies that naturally excite you to find fields where you will be most engaged.',
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
                    Navigator.pushNamed(context, NamedRoutes.saqInterestsQuizscreen1);
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
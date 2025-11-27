import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:aspire/widgets/quiz_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/static/app_color.dart';
import '../../models/static/named_routes.dart';
import '../../widgets/bottom_nav_bar.dart';

class InterestsQuizscreen extends ConsumerStatefulWidget {
  const InterestsQuizscreen({super.key});

  @override
  ConsumerState<InterestsQuizscreen> createState() {
    return _InterestsQuizscreenState();
  }
}

class _InterestsQuizscreenState extends ConsumerState<InterestsQuizscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(ref: ref,),
      appBar: QuizAppBar(),
      
      body: Column(
        children: [
          Image.asset('assets/interests_heropage.png'),

          Padding(
            padding: EdgeInsets.fromLTRB(26, 34, 26, 0),
            child: Column(
              children: [
                Text(
                  'Section 1: Interests',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w700, 
                    fontSize: 34, 
                    color: AppColor.textBlack,
                  ),
                ),

                SizedBox(height: 18,),

                Text(
                  textAlign: TextAlign.center,
                  '"Discover what you love."\n Identify the activities, topics, and hobbies that naturally excite you to find fields where you will be most engaged.',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w500, 
                    fontSize: 15, 
                    color: AppColor.textGrey,
                  ),
                ),

                SizedBox(height: 26,),

                QuizButton(text: "Get Started", 
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
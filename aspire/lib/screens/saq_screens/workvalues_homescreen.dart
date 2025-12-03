import 'package:aspire/widgets/quiz_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/static/app_color.dart';
import '../../models/static/named_routes.dart';
import '../../widgets/bottom_nav_bar.dart';

class WorkvaluesHomescreen extends ConsumerStatefulWidget {
  const WorkvaluesHomescreen({super.key});

  @override
  ConsumerState<WorkvaluesHomescreen> createState() {
    return _WorkvaluesHomescreenState();
  }
}

class _WorkvaluesHomescreenState extends ConsumerState<WorkvaluesHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(ref: ref,),
      
      body: Column(
        children: [
          Image.asset('assets/workvalues_heropage.png'),
      
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(26, 34, 26, 26),
              child: Column(
                children: [
                  Text(
                    'Section 3: Work Values',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700, 
                      fontSize: 20, 
                      color: AppColor.textBlack,
                    ),
                  ),
                    
                  SizedBox(height: 18,),
                    
                  Text(
                    textAlign: TextAlign.center,
                    '"Uncover what drives you."\n Determine the core motivations—like high income, creativity, or stability—that are essential for your long-term career satisfaction.',
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
                    Navigator.pushNamed(context, NamedRoutes.saqWorkValuesQuizscreen);
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
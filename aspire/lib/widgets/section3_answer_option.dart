import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/static/app_color.dart';
import '../utils/providers/quiz_provider.dart';



class Section3AnswerOption extends StatelessWidget {
  const Section3AnswerOption({super.key, required this.assignedAnswerIndex, required this.ref, required this.questionID});

  final int assignedAnswerIndex;
  final int questionID;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final currentSelectedAnswer = ref.watch(quizNotifierProvider);
    List<String> likertScaleText = ["1: Not Important", "2: Low Priority", "3: Medium Priority", "4: Very High Priority", "5: Non-Negotiable"];
    
    return Card(
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
          side: assignedAnswerIndex == currentSelectedAnswer[questionID].chosenAnswer ? BorderSide(color: AppColor.iconGreen, width: 1) : BorderSide.none,
        ),
      
        trailing: assignedAnswerIndex == currentSelectedAnswer[questionID].chosenAnswer ? 
        Icon(
          // Icons.radio_button_unchecked_rounded,
          Icons.radio_button_checked_rounded,
          // color: AppColor.iconGreyGrey,
          color: AppColor.iconGreen,
          size: 26.0,
        ) : 
        Icon(
          Icons.radio_button_unchecked_rounded,
          color: AppColor.iconGreyGrey,
          size: 26.0,
        ),
      
        title: Text(
          likertScaleText[assignedAnswerIndex], 
          style: GoogleFonts.manrope(
            fontSize: 16, 
            fontWeight: FontWeight.w500, 
            color: AppColor.textBlackBlack
          ),
        ),
        
        onTap: () {
          ref.read(quizNotifierProvider.notifier).updateActiveIndex(questionID, assignedAnswerIndex);
        }
      ),
    );
  }
}
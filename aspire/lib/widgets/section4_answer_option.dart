import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/static/app_color.dart';
import '../utils/providers/quiz_provider.dart';



class Section4AnswerOption extends StatelessWidget {
  const Section4AnswerOption({super.key, required this.assignedAnswerIndex, required this.ref, required this.questionID});

  final int assignedAnswerIndex;
  final int questionID;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final currentSelectedAnswer = ref.watch(quizNotifierProvider);
    
    List<String> environmentChoices = ["(A) I prefer a quiet, private space to focus deeply.", "(B) I prefer a busy, open space with lots of energy and chatter."];
    List<String> focusChoices = ["(A) I like to focus on one project until it is perfect.", "(B) I like to juggle multiple different projects at once."];
    List<String> riskChoices = ["(A) I prefer a guaranteed path with a steady outcome.", "(B) I am willing to take big risks for a chance at a huge reward."];
    List<String> thinkingChoices = ["(A) Concrete: I like dealing with facts, data, and what is \"real.\"", "(B) Abstract: I like dealing with theories, ideas, and \"what if.\""];

    List<List<String>> section4Choices= [environmentChoices, focusChoices, riskChoices, thinkingChoices];
    
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
          section4Choices[questionID-45][assignedAnswerIndex], 
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
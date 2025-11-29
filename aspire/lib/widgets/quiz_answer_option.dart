import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/static/app_color.dart';



class QuizAnswerOption extends StatelessWidget {
  const QuizAnswerOption({super.key, required this.index, required this.ref});

  final int index;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {

    List<String> likertScaleText = ["1: Hate It", "2: Dislike It", "3: Neutral", "4: Like It", "5: Love It"];
    
    return Card(
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
          side: index == 1 ? BorderSide(color: AppColor.iconGreen, width: 1) : BorderSide.none,
        ),
      
        trailing: index == 1 ? 
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
          likertScaleText[index], 
          style: GoogleFonts.manrope(
            fontSize: 16, 
            fontWeight: FontWeight.w500, 
            color: AppColor.textBlackBlack
          ),
        ),
        
        onTap: () {
        }
      ),
    );
  }
}
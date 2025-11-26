import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/static/app_color.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({super.key, required this.text, required this.buttonFunction});

  final String text;
  final Function buttonFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          buttonFunction();
        },

        style: TextButton.styleFrom(
          backgroundColor: AppColor.iconBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        ),

        child: Text(
          text,
          style: GoogleFonts.inter(
            fontSize: 20, 
            fontWeight: FontWeight.w600, 
            color: AppColor.textWhite
          ),
        ),
      ),
    );
  }
}

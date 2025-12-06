import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future answerAllQuestionsDialog(BuildContext context) {
  return showDialog(
    context: context, 
    builder: (BuildContext context) {
      return SimpleDialog(
        contentPadding: EdgeInsets.fromLTRB(36, 12, 36, 24),
        backgroundColor: ThemeData.light().scaffoldBackgroundColor,
        alignment: AlignmentGeometry.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
          side: BorderSide(color: Colors.red, width: 3),
        ),

        title: Center(
          child: Icon(
          Icons.priority_high_rounded,
          size: 70,
          color: Colors.red,
          ),
        ),

        children: [
          Center(
            child: Text(
              'Answer all questions to proceed',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600, 
                fontSize: 22, 
                color: Colors.red
              ),
            ),
          ),
        ],
      );
    }
  );
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/static/app_color.dart';

class QuizSectionCard extends StatelessWidget {
  const QuizSectionCard({super.key, required this.imagePath, required this.title, required this.numOfQuestions});

  final String imagePath;
  final String title;
  final int numOfQuestions;

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w600, 
                  fontSize: 14, 
                  color: AppColor.textWhite,),
              ),
          
              Spacer(),
          
              SizedBox(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.end,
                  "$numOfQuestions",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w500, 
                    fontSize: 14, 
                    color: AppColor.textWhite,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
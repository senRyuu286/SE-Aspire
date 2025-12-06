import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/static/app_color.dart';

class SaqAnalysisCard extends StatelessWidget {
  const SaqAnalysisCard({super.key, required this.imagePath, required this.title});

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        width: 150,
        height: 150,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: AppColor.textWhite,
          ),
        ),
      ),
    );
  }
}
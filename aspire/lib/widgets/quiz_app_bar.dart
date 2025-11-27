import 'package:aspire/models/static/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizAppBar extends StatelessWidget implements PreferredSizeWidget {
  const QuizAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 26, right: 26), //adjust the padding as you want
      child: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        titleSpacing: 10,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          
          iconSize: 40.0,
          color: AppColor.iconWhite,
          tooltip: 'Back',
        ),
    
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Aspire',
            style: GoogleFonts.urbanist(
              fontWeight: FontWeight.w800, 
              fontSize: 24, 
              color: AppColor.textWhite,),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
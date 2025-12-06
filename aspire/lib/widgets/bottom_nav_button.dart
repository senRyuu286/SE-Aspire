import 'package:aspire/models/static/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utils/providers/nav_bar_provider.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({super.key, required this.navIcon, required this.label, required this.assignedIndex, required this.ref});

  final IconData navIcon;
  final String label;
  final int assignedIndex;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final currentSelectedIndex = ref.watch(navBarNotifierProvider);

    return Expanded(
      child: TextButton(
        onPressed: () {
          ref.read(navBarNotifierProvider.notifier).updateActiveIndex(assignedIndex);

          if (assignedIndex == 0) {
            //Route to Home
          } else if (assignedIndex == 1) {
            //Route to Quiz
          } else if (assignedIndex == 2) {
            //Route to Career Guidance
          } else if (assignedIndex == 3) {
            //Route to Job Market
          } else if (assignedIndex == 4) {
            //Route to Profile
          }
        }, 

        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            
          ),
        ),
        
        child: SizedBox(
          height: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: currentSelectedIndex == assignedIndex ? AppColor.textBlue : null,
                height: 4,
              ),

              Spacer(),

              Icon(
                size: 28,
                navIcon,
                color: currentSelectedIndex == assignedIndex ? AppColor.textBlue : AppColor.textGrey,
              ),
      
              SizedBox(height: 4),
                  
              Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.manrope(
                  fontWeight: currentSelectedIndex == assignedIndex ? FontWeight.w700 : FontWeight.w600,
                  fontSize: 12,
                  color: currentSelectedIndex == assignedIndex ? AppColor.textBlue : AppColor.textGrey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
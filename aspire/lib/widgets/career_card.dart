import 'package:aspire/models/static/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/static/career_option.dart';

class CareerCard extends StatelessWidget {
  const CareerCard({super.key, required this.career});

  final CareerOption career;

  @override
  Widget build(BuildContext context) {
    final Color matchColor = career.matchPercentage > 85
        ? Colors.green
        : (career.matchPercentage > 70 ? Colors.orange : Colors.grey);

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: AssetImage("assets/career_card_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.account_balance_rounded,
                  size: 30,
                  color: AppColor.iconWhite,
                  ),

                SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        career.jobTitle,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w700, 
                          fontSize: 14, 
                          color: AppColor.textWhite,
                        ),
                      ),
                      Text(
                        career.salary,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400, 
                          fontSize: 12, 
                          color: AppColor.textWhite,
                        ),
                      ),
                    ],
                  ),
                ),
                // Match Indicator
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularProgressIndicator(
                          value: career.matchPercentage / 100,
                          backgroundColor: Colors.grey[200],
                          color: matchColor,
                          strokeWidth: 6,
                        ),
                        Text(
                          "${career.matchPercentage}%",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w700, 
                            fontSize: 12, 
                            color: AppColor.textWhite,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text("Match", 
                        style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w400, 
                        fontSize: 10, 
                        color: AppColor.textWhite,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: career.requiredSkills.map((skill) {
                return Chip(
                  label: Text(
                    skill, 
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600, 
                      fontSize: 10, 
                      color: AppColor.textBlack,
                    ),
                  ),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                );
              }).toList(),
            ),

            SizedBox(height: 4,),

            Text(
              career.dayToDay,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w400, 
                fontSize: 12, 
                color: AppColor.textWhite,
                height: 1.4
              ),
            ),

            SizedBox(height: 12,),

            Text(
              "Why It Fits:",
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w700, 
                fontSize: 14, 
                color: AppColor.textWhite,
              ),
            ),

            SizedBox(height: 12,),
            
            Text(
              career.whyItFits,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w400, 
                fontSize: 12, 
                color: AppColor.textWhite,
                height: 1.4
              ),
            ),
          ],
        ),
      ),
    );
  }
}
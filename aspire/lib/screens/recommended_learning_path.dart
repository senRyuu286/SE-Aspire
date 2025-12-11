import 'package:aspire/widgets/bottom_nav_bar.dart';
import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/static/app_color.dart';
import '../models/static/recommended_path.dart';

class RecommendedLearningPath extends ConsumerWidget {
  final RecommendedPath? recommendedPath;
  final String? jobTitle;
  const RecommendedLearningPath({
    super.key,
    required this.recommendedPath,
    this.jobTitle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rp = recommendedPath;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: QuizAppBar(),
      bottomNavigationBar: BottomNavBar(ref: ref),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset('assets/header_bg.png'),

              Padding(
                padding: EdgeInsets.fromLTRB(26, 120, 26, 24),
                child: rp == null
                    ? Center(
                        child: Text(
                          'No recommended path',
                          style: GoogleFonts.manrope(fontSize: 16),
                        ),
                      )
                    : SizedBox(
                        height: 700,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${jobTitle}\nLearning Path',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w800,
                                fontSize: 38,
                                color: AppColor.textWhite,
                              ),
                            ),

                            SizedBox(height: 14),

                            Text(
                              textAlign: TextAlign.left,
                              'Mapping Your Strengths to In-Demand Roles',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColor.textWhite,
                              ),
                            ),

                            SizedBox(height: 50,),

                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // SHS Track Card
                                    Card(
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Suggested Senior High Track',
                                              style: GoogleFonts.manrope(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: AppColor.textBlack,
                                              ),
                                            ),
                                            const SizedBox(height: 12),
                                            Text(
                                              rp.shsTrack,
                                              style: GoogleFonts.manrope(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xFF3064E8),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16),

                                    // College Course Card
                                    Card(
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Recommended College Course',
                                              style: GoogleFonts.manrope(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: AppColor.textBlack,
                                              ),
                                            ),
                                            const SizedBox(height: 12),
                                            Text(
                                              rp.collegeCourse,
                                              style: GoogleFonts.manrope(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),

                                    // Top Universities Section
                                    Text(
                                      'Top Universities',
                                      style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: AppColor.textBlack,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    ...rp.topUniversities.map(
                                      (u) => Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 12,
                                        ),
                                        child: Card(
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                              vertical: 14,
                                            ),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.school,
                                                  color: Color(0xFF3064E8),
                                                  size: 24,
                                                ),
                                                const SizedBox(width: 12),
                                                Expanded(
                                                  child: Text(
                                                    u,
                                                    style: GoogleFonts.manrope(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),

                                    // Certifications Section
                                    Text(
                                      'Certifications',
                                      style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: AppColor.textBlack,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    ...rp.certifications.map(
                                      (c) => Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 12,
                                        ),
                                        child: Card(
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                              vertical: 14,
                                            ),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.card_membership,
                                                  color: Color(0xFF3064E8),
                                                  size: 24,
                                                ),
                                                const SizedBox(width: 12),
                                                Expanded(
                                                  child: Text(
                                                    c,
                                                    style: GoogleFonts.manrope(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 32),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

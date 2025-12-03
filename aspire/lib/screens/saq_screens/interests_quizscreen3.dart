import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/static/app_color.dart';
import '../../models/static/named_routes.dart';
import '../../utils/providers/quiz_provider.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/section1_answer_option.dart';
import '../../widgets/quiz_button.dart';

class InterestsQuizscreen3 extends ConsumerStatefulWidget {
  const InterestsQuizscreen3({super.key});

  @override
  ConsumerState<InterestsQuizscreen3> createState() {
    return _InterestsQuizscreenState();
  }
}

class _InterestsQuizscreenState extends ConsumerState<InterestsQuizscreen3> {
  @override
  Widget build(BuildContext context) {
    final quizQuestions = ref.read(quizNotifierProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavBar(ref: ref,),
      appBar: QuizAppBar(),
      
      body: Stack(
        children: [
          Container(
            color: AppColor.iconBlue,
            width: double.infinity,
            height: 232,
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(26, 120, 26, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Section 1:\nInterests',
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w700, 
                        fontSize: 32, 
                        color: AppColor.textWhite,),
                    ),

                    Spacer(),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          style: GoogleFonts.manrope(
                            fontSize: 16.0, 
                            color: AppColor.textWhite,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: '11-15/30 ',
                              style: GoogleFonts.manrope(fontWeight: FontWeight.w700, ),),
                            TextSpan(text: 'Questions',
                              style: GoogleFonts.manrope(fontWeight: FontWeight.w400, ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 42,),

                RichText(
                  text: TextSpan(
                    style: GoogleFonts.manrope(
                      fontSize: 16.0, 
                      color: AppColor.textGreyGrey,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Instruction:',
                        style: GoogleFonts.manrope(fontWeight: FontWeight.w700, ),),
                      TextSpan(text: 'Rate how much you would enjoy doing each activity." Scale: 1 (Hate it) to 5 (Love it).',
                        style: GoogleFonts.manrope(fontWeight: FontWeight.w400, ),),
                    ],
                  ),
                ),

                SizedBox(height: 18,),

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "${quizQuestions[10].questionID}. ${quizQuestions[10].questionText}",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500, 
                            fontSize: 18, 
                            color: AppColor.textBlackBlack,),
                        ),

                        SizedBox(height: 20,),

                        ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(), 
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 10,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[11].questionID}. ${quizQuestions[11].questionText}",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500, 
                            fontSize: 18, 
                            color: AppColor.textBlackBlack,),
                        ),

                        SizedBox(height: 20,),

                        ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(), 
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 11,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[12].questionID}. ${quizQuestions[12].questionText}",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500, 
                            fontSize: 18, 
                            color: AppColor.textBlackBlack,),
                        ),

                        SizedBox(height: 20,),

                        ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(), 
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 12,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[13].questionID}. ${quizQuestions[13].questionText}",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500, 
                            fontSize: 18, 
                            color: AppColor.textBlackBlack,),
                        ),

                        SizedBox(height: 20,),

                        ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(), 
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 13,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[14].questionID}. ${quizQuestions[14].questionText}",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500, 
                            fontSize: 18, 
                            color: AppColor.textBlackBlack,),
                        ),

                        SizedBox(height: 20,),

                        ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(), 
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 14,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        QuizButton(text: "Next", 
                        buttonFunction: () {
                            Navigator.pushNamed(context, NamedRoutes.saqInterestsQuizscreen4);
                        },),

                        SizedBox(height: 20,),
                      ],
                    ),
                  )),
              ],
            ),  
          ),
        ],
      )
    );
  }
}
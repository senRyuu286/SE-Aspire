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

class InterestsQuizscreen4 extends ConsumerStatefulWidget {
  const InterestsQuizscreen4({super.key});

  @override
  ConsumerState<InterestsQuizscreen4> createState() {
    return _InterestsQuizscreenState();
  }
}

class _InterestsQuizscreenState extends ConsumerState<InterestsQuizscreen4> {
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
                            TextSpan(text: '16-20/30 ',
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
                          "${quizQuestions[15].questionID}. ${quizQuestions[15].questionText}",
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
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 15,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[16].questionID}. ${quizQuestions[16].questionText}",
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
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 16,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[17].questionID}. ${quizQuestions[17].questionText}",
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
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 17,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[18].questionID}. ${quizQuestions[18].questionText}",
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
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 18,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[19].questionID}. ${quizQuestions[19].questionText}",
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
                            return Section1AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 19,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        QuizButton(text: "Next", 
                        buttonFunction: () {
                            Navigator.pushNamed(context, NamedRoutes.saqInterestsQuizscreen5);
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
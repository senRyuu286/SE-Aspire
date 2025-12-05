import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/static/app_color.dart';
import '../../models/static/named_routes.dart';
import '../../utils/providers/quiz_provider.dart';
import '../../widgets/answer_all_questions_dialog.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/quiz_button.dart';
import '../../widgets/section3_answer_option.dart';

class WorkvaluesQuizscreen extends ConsumerStatefulWidget {
  const WorkvaluesQuizscreen({super.key});

  @override
  ConsumerState<WorkvaluesQuizscreen> createState() {
    return _InterestsQuizscreenState();
  }
}

class _InterestsQuizscreenState extends ConsumerState<WorkvaluesQuizscreen> {
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
                      'Section 3:\nWork Values',
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
                            TextSpan(text: '7 ',
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
                      TextSpan(text: 'How important is this factor to you in a future career?" Scale: 1 (Not Important) to 5 (Non-Negotiable)',
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
                          "${quizQuestions[38].questionID}. ${quizQuestions[38].questionText}",
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
                            return Section3AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 38,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[39].questionID}. ${quizQuestions[39].questionText}",
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
                            return Section3AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 39,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[40].questionID}. ${quizQuestions[40].questionText}",
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
                            return Section3AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 40,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[41].questionID}. ${quizQuestions[41].questionText}",
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
                            return Section3AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 41,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[42].questionID}. ${quizQuestions[42].questionText}",
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
                            return Section3AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 42,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[43].questionID}. ${quizQuestions[43].questionText}",
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
                            return Section3AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 43,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[44].questionID}. ${quizQuestions[44].questionText}",
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
                            return Section3AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 44,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        QuizButton(text: "Next", 
                        buttonFunction: () {
                          if (quizQuestions[38].chosenAnswer == 5 ||
                              quizQuestions[39].chosenAnswer == 5 ||
                              quizQuestions[40].chosenAnswer == 5 ||
                              quizQuestions[41].chosenAnswer == 5 ||
                              quizQuestions[42].chosenAnswer == 5 ||
                              quizQuestions[43].chosenAnswer == 5 ||
                              quizQuestions[44].chosenAnswer == 5 
                          ) {
                            answerAllQuestionsDialog(context);
                          } else {
                            Navigator.pushNamed(context, NamedRoutes.saqPersonalityAndWorkstyleHomescreen);
                          }
                            
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
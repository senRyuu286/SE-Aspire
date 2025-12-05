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
import '../../widgets/section2_answer_option.dart';

class SkillsandaptitudesQuizscreen extends ConsumerStatefulWidget {
  const SkillsandaptitudesQuizscreen({super.key});

  @override
  ConsumerState<SkillsandaptitudesQuizscreen> createState() {
    return _InterestsQuizscreenState();
  }
}

class _InterestsQuizscreenState extends ConsumerState<SkillsandaptitudesQuizscreen> {
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
                      'Section 2:\nSkills & Aptitudes',
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
                            TextSpan(text: '8 ',
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
                      TextSpan(text: 'Rate your current ability or how easily you learn these tasks." Scale: 1 (Beginner/Hard) to 5 (Expert/Easy)',
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
                          "${quizQuestions[30].questionID}. ${quizQuestions[30].questionText}",
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
                            return Section2AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 30,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[31].questionID}. ${quizQuestions[31].questionText}",
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
                            return Section2AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 31,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[32].questionID}. ${quizQuestions[32].questionText}",
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
                            return Section2AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 32,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[33].questionID}. ${quizQuestions[33].questionText}",
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
                            return Section2AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 33,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[34].questionID}. ${quizQuestions[34].questionText}",
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
                            return Section2AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 34,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[35].questionID}. ${quizQuestions[35].questionText}",
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
                            return Section2AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 35,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[36].questionID}. ${quizQuestions[36].questionText}",
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
                            return Section2AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 36,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[37].questionID}. ${quizQuestions[37].questionText}",
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
                            return Section2AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 37,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        QuizButton(text: "Next", 
                        buttonFunction: () {
                          if (quizQuestions[30].chosenAnswer == 5 ||
                              quizQuestions[31].chosenAnswer == 5 ||
                              quizQuestions[32].chosenAnswer == 5 ||
                              quizQuestions[33].chosenAnswer == 5 ||
                              quizQuestions[34].chosenAnswer == 5 ||
                              quizQuestions[35].chosenAnswer == 5 ||
                              quizQuestions[36].chosenAnswer == 5 ||
                              quizQuestions[37].chosenAnswer == 5
                          ) {
                            answerAllQuestionsDialog(context);
                          } else {
                            Navigator.pushNamed(context, NamedRoutes.saqWorkValuesHomescreen);
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
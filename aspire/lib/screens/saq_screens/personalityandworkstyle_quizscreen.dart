import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/static/app_color.dart';
import '../../models/static/named_routes.dart';
import '../../utils/firebase_quiz_service.dart';
import '../../utils/firebase_quiz_summary_service.dart';
import '../../utils/providers/quiz_provider.dart';
import '../../utils/providers/quiz_summary_provider.dart';
import '../../widgets/answer_all_questions_dialog.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/quiz_button.dart';
import '../../widgets/section4_answer_option.dart';

class PersonalityandworkstyleQuizscreen extends ConsumerStatefulWidget {
  const PersonalityandworkstyleQuizscreen({super.key});

  @override
  ConsumerState<PersonalityandworkstyleQuizscreen> createState() {
    return _InterestsQuizscreenState();
  }
}

class _InterestsQuizscreenState extends ConsumerState<PersonalityandworkstyleQuizscreen> {
  @override
  Widget build(BuildContext context) {
    final quizQuestions = ref.read(quizNotifierProvider);
    final quizService = FirebaseQuizService();
    final quizSummaryService = FirebaseQuizSummaryService();

    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavBar(ref: ref,),
      appBar: QuizAppBar(),
      
      body: Stack(
        children: [
          Container(
            color: AppColor.iconBlue,
            width: double.infinity,
            height: 266,
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
                      'Section 4:\nPersonality &\nWork Style',
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
                            TextSpan(text: '4 ',
                              style: GoogleFonts.manrope(fontWeight: FontWeight.w700, ),),
                            TextSpan(text: 'Questions',
                              style: GoogleFonts.manrope(fontWeight: FontWeight.w400, ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 32,),

                RichText(
                  text: TextSpan(
                    style: GoogleFonts.manrope(
                      fontSize: 16.0, 
                      color: AppColor.textGreyGrey,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Instruction:',
                        style: GoogleFonts.manrope(fontWeight: FontWeight.w700, ),),
                      TextSpan(text: 'Which option describes you better?" Scale: Choice A or Choice B.',
                        style: GoogleFonts.manrope(fontWeight: FontWeight.w400, ),),
                    ],
                  ),
                ),

                SizedBox(height: 18,),

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${quizQuestions[45].questionID}. ${quizQuestions[45].questionText}",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500, 
                            fontSize: 18, 
                            color: AppColor.textBlackBlack,),
                        ),

                        SizedBox(height: 20,),

                        ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(), 
                          itemCount: 2,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Section4AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 45,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[46].questionID}. ${quizQuestions[46].questionText}",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500, 
                            fontSize: 18, 
                            color: AppColor.textBlackBlack,),
                        ),

                        SizedBox(height: 20,),

                        ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(), 
                          itemCount: 2,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Section4AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 46,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[47].questionID}. ${quizQuestions[47].questionText}",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500, 
                            fontSize: 18, 
                            color: AppColor.textBlackBlack,),
                        ),

                        SizedBox(height: 20,),

                        ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(), 
                          itemCount: 2,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Section4AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 47,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        Text(
                          "${quizQuestions[48].questionID}. ${quizQuestions[48].questionText}",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500, 
                            fontSize: 18, 
                            color: AppColor.textBlackBlack,),
                        ),

                        SizedBox(height: 20,),

                        ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(), 
                          itemCount: 2,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Section4AnswerOption(ref: ref, assignedAnswerIndex: index, questionID: 48,);
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8,);
                          },
                        ),

                        SizedBox(height: 20,),

                        QuizButton(text: "Submit Quiz", 
                        buttonFunction: () {
                          if (quizQuestions[45].chosenAnswer == 5 ||
                              quizQuestions[46].chosenAnswer == 5 ||
                              quizQuestions[47].chosenAnswer == 5 ||
                              quizQuestions[48].chosenAnswer == 5
                          ) {
                            answerAllQuestionsDialog(context);
                          } else {
                            ref.read(quizSummaryNotifierProvider.notifier).updateQuizSummaryData();
                            ref.read(quizSummaryNotifierProvider.notifier).updateIsCompleted();
                            quizService.updateQuizProgress(ref);
                            quizSummaryService.updateQuizSummary(ref);
                            Navigator.pushNamed(context, NamedRoutes.saqResultsScreen);
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
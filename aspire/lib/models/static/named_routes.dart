
import 'package:aspire/screens/onboarding_screens/onboarding2.dart';
import 'package:aspire/screens/saq_screens/interests_homescreen.dart';
import 'package:aspire/screens/onboarding_screens/onboarding1.dart';
import 'package:aspire/screens/saq_screens/personalityandworkstyle_homescreen.dart';
import 'package:aspire/screens/saq_screens/personalityandworkstyle_quizscreen.dart';
import 'package:aspire/screens/saq_screens/saq_results.dart';
import 'package:aspire/screens/saq_screens/skillsandaptitudes_homescreen.dart';
import 'package:aspire/screens/saq_screens/skillsandaptitudes_quizscreen.dart';
import 'package:aspire/screens/saq_screens/workvalues_homescreen.dart';
import 'package:aspire/screens/saq_screens/workvalues_quizscreen.dart';
import 'package:aspire/screens/skill_assessment_quiz.dart';
import 'package:flutter/material.dart';

import '../../screens/career_result_screen.dart';
import '../../screens/get_started_screen.dart';
import '../../screens/login_screen.dart';
import '../../screens/register_screen.dart';
import '../../screens/saq_screens/interests_quizscreen1.dart';
import '../../screens/saq_screens/interests_quizscreen2.dart';
import '../../screens/saq_screens/interests_quizscreen3.dart';
import '../../screens/saq_screens/interests_quizscreen4.dart';
import '../../screens/saq_screens/interests_quizscreen5.dart';
import '../../screens/saq_screens/interests_quizscreen6.dart';

class NamedRoutes {
  //MAIN SCREENS
  // static final String homeScreen = '/homeScreen';
  static final String getStartedScreen = '/getStartedScreen';
  static final String loginScreen = '/loginScreen';
  static final String registerScreen = '/registerScreen';
  static final String skillAssessmentQuiz = '/skillAssessmentQuiz';
  static final String careerRecommendation = '/careerRecommendation';

  //ONBOARDING SCREENS
  static final String onboarding1 = 'onboarding1';
  static final String onboarding2 = 'onboarding2';

  //SKILL ASSESSMENT QUIZ SCREENS
  static final String saqInterestsHomescreen = '/saqInterestsHomescreen';
  static final String saqInterestsQuizscreen1 = '/saqInterestsQuizscreen1';
  static final String saqInterestsQuizscreen2 = '/saqInterestsQuizscreen2';
  static final String saqInterestsQuizscreen3 = '/saqInterestsQuizscreen3';
  static final String saqInterestsQuizscreen4 = '/saqInterestsQuizscreen4';
  static final String saqInterestsQuizscreen5 = '/saqInterestsQuizscreen5';
  static final String saqInterestsQuizscreen6 = '/saqInterestsQuizscreen6';

  static final String saqSkillsAndAptitudesHomescreen = '/saqSkillsAndAptitudesHomescreen';
  static final String saqSkillsAndAptitudesQuizscreen = '/saqSkillsAndAptitudesQuizscreen';

  static final String saqPersonalityAndWorkstyleHomescreen = '/saqPersonalityAndWorkstyleHomescreen';
  static final String saqPersonalityAndWorkstyleQuizscreen = '/saqPersonalityAndWorkstyleQuizscreen';

  static final String saqWorkValuesHomescreen = '/saqWorkValuesHomescreen';
  static final String saqWorkValuesQuizscreen = '/saqWorkValuesQuizscreen';

  static final String saqResultsScreen = '/saqResultsScreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    //MAIN SCREENS
    getStartedScreen: (context) => const GetStartedScreen(),
    loginScreen: (context) => const LoginScreen(),
    registerScreen: (context) => const RegisterScreen(),
    skillAssessmentQuiz: (context) => const SkillAssessmentQuiz(),
    careerRecommendation: (context) => const CareerResultScreen(),


    //ONBOARDING SCREENS
    onboarding1: (context) => const Onboarding1(),
    onboarding2: (context) => const Onboarding2(),

    //SKILL ASSESSMENT QUIZ SCREENS
    saqInterestsHomescreen: (context) => const InterestsHomescreen(),
    saqInterestsQuizscreen1: (context) => const InterestsQuizscreen1(),
    saqInterestsQuizscreen2: (context) => const InterestsQuizscreen2(),
    saqInterestsQuizscreen3: (context) => const InterestsQuizscreen3(),
    saqInterestsQuizscreen4: (context) => const InterestsQuizscreen4(),
    saqInterestsQuizscreen5: (context) => const InterestsQuizscreen5(),
    saqInterestsQuizscreen6: (context) => const InterestsQuizscreen6(),

    saqSkillsAndAptitudesHomescreen: (context) => const SkillsandaptitudesHomescreen(),
    saqSkillsAndAptitudesQuizscreen: (context) => const SkillsandaptitudesQuizscreen(),

    saqPersonalityAndWorkstyleHomescreen: (context) => const PersonalityandworkstyleHomescreen(),
    saqPersonalityAndWorkstyleQuizscreen: (context) => const PersonalityandworkstyleQuizscreen(),

    saqWorkValuesHomescreen: (context) => const WorkvaluesHomescreen(),
    saqWorkValuesQuizscreen: (context) => const WorkvaluesQuizscreen(),
  
    saqResultsScreen: (context) => const SaqResults(),
  };
}
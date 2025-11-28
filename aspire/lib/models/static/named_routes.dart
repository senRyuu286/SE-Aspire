
import 'package:aspire/screens/onboarding_screens/onboarding2.dart';
import 'package:aspire/screens/saq_screens/interests_homescreen.dart';
import 'package:aspire/screens/onboarding_screens/onboarding1.dart';
import 'package:aspire/screens/saq_screens/personalityandworkstyle_homescreen.dart';
import 'package:aspire/screens/saq_screens/skillsandaptitudes_homescreen.dart';
import 'package:aspire/screens/saq_screens/workvalues_homescreen.dart';
import 'package:aspire/screens/skill_assessment_quiz.dart';
import 'package:flutter/material.dart';

import '../../screens/get_started_screen.dart';
import '../../screens/login_screen.dart';
import '../../screens/register_screen.dart';
import '../../screens/saq_screens/interests_quizscreen.dart';

class NamedRoutes {
  //MAIN SCREENS
  // static final String homeScreen = '/homeScreen';
  static final String getStartedScreen = '/getStartedScreen';
  static final String loginScreen = '/loginScreen';
  static final String registerScreen = '/registerScreen';
  static final String skillAssessmentQuiz = '/skillAssessmentQuiz';

  //ONBOARDING SCREENS
  static final String onboarding1 = 'onboarding1';
  static final String onboarding2 = 'onboarding2';

  //SKILL ASSESSMENT QUIZ SCREENS
  static final String saqInterestsHomescreen = '/saqInterestsHomescreen';
  static final String saqInterestsQuizscreen = '/saqInterestsQuizscreen';

  static final String saqSkillsAndAptitudes = '/saqSkillsAndAptitudes';

  static final String saqPersonalityAndWorkstyle = '/saqPersonalityAndWorkstyle';

  static final String saqWorkValues = '/saqWorkValues';

  static Map<String, Widget Function(BuildContext)> routes = {
    //MAIN SCREENS
    getStartedScreen: (context) => const GetStartedScreen(),
    loginScreen: (context) => const LoginScreen(),
    registerScreen: (context) => const RegisterScreen(),
    skillAssessmentQuiz: (context) => const SkillAssessmentQuiz(),

    //ONBOARDING SCREENS
    onboarding1: (context) => const Onboarding1(),
    onboarding2: (context) => const Onboarding2(),

    //SKILL ASSESSMENT QUIZ SCREENS
    saqInterestsHomescreen: (context) => const InterestsHomescreen(),
    saqInterestsQuizscreen: (context) => const InterestsQuizscreen(),

    saqSkillsAndAptitudes: (context) => const SkillsandaptitudesHomescreen(),

    saqPersonalityAndWorkstyle: (context) => const PersonalityandworkstyleHomescreen(),

    saqWorkValues: (context) => const WorkvaluesHomescreen(),
  };
}
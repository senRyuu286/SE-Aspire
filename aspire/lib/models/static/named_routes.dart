import 'package:aspire/screens/job_market.dart';
import 'package:aspire/screens/onboarding_screens/onboarding2.dart';
import 'package:aspire/screens/saq_screens/interests_homescreen.dart';
import 'package:aspire/screens/onboarding_screens/onboarding1.dart';
import 'package:aspire/screens/skill_assessment_quiz.dart';
import 'package:flutter/material.dart';

import '../../screens/get_started_screen.dart';
import '../../screens/job_market.dart';
import '../../screens/login_screen.dart';
import '../../screens/register_screen.dart';
import '../../screens/saq_screens/interests_quizscreen.dart';
import '../../screens/Homescreen.dart';
import '../../screens/job_market.dart';

class NamedRoutes {
  //MAIN SCREENS
  static final String homeScreen = '/homeScreen';
  static final String getStartedScreen = '/getStartedScreen';
  static final String loginScreen = '/loginScreen';
  static final String registerScreen = '/registerScreen';
  static final String skillAssessmentQuiz = '/skillAssessmentQuiz';
  static final String jobMarket = '/JobMarket';

  //ONBOARDING SCREENS
  static final String onboarding1 = 'onboarding1';
  static final String onboarding2 = 'onboarding2';

  //SKILL ASSESSMENT QUIZ SCREENS
  static final String saqInterestsHomescreen = '/saqInterestsHomescreen';
  static final String saqInterestsQuizscreen = '/saqInterestsQuizscreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    //MAIN SCREENS
    getStartedScreen: (context) => const GetStartedScreen(),
    loginScreen: (context) => const LoginScreen(),
    registerScreen: (context) => const RegisterScreen(),
    skillAssessmentQuiz: (context) => const SkillAssessmentQuiz(),
    homeScreen: (context) => const Homescreen(),
    jobMarket: (context) => const JobMarket(),

    //ONBOARDING SCREENS
    onboarding1: (context) => const Onboarding1(),
    onboarding2: (context) => const Onboarding2(),

    //SKILL ASSESSMENT QUIZ SCREENS
    saqInterestsHomescreen: (context) => const InterestsHomescreen(),
    saqInterestsQuizscreen: (context) => const InterestsQuizscreen(),
  };
}

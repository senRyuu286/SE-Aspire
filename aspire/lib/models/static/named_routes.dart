
import 'package:aspire/screens/Onboarding1.dart';
import 'package:aspire/screens/dummy_home_screen.dart';
import 'package:aspire/screens/skill_assessment_quiz.dart';

import 'package:flutter/material.dart';

import '../../screens/get_started_screen.dart';
import '../../screens/login_screen.dart';
import '../../screens/register_screen.dart';



class NamedRoutes {
  static final String homescreen = '/homescreen';
  static final String getStartedScreen = '/getStartedScreen';
  static final String loginScreen = '/loginScreen';
  static final String registerScreen = '/registerScreen';
  static final String skillAssessmentQuiz = '/skillAssessmentQuiz';

  static Map<String, Widget Function(BuildContext)> routes = {
    homescreen: (context) => const Onboarding1(), 
    getStartedScreen: (context) => const GetStartedScreen(),
    loginScreen: (context) => const LoginScreen(),
    registerScreen: (context) => const RegisterScreen(),
    skillAssessmentQuiz: (context) => const SkillAssessmentQuiz(),
  };
}
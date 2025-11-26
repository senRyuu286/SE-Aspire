import 'package:aspire/screens/dummy_home_screen.dart';
import 'package:aspire/screens/skill_assessment_quiz.dart';
import 'package:flutter/material.dart';

class NamedRoutes {
  static final String homeScreen = '/homeScreen';
  static final String skillAssessmentQuiz = '/skillAssessmentQuiz';

  static Map<String, Widget Function(BuildContext)> routes = {
    homeScreen: (context) => const DummyHomeScreen(), 
    skillAssessmentQuiz: (context) => const SkillAssessmentQuiz(),
  };
}
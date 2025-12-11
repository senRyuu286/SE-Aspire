
import 'package:aspire/screens/onboarding_screens/onboarding2.dart';
import 'package:aspire/screens/recommended_learning_path.dart';
import 'package:aspire/screens/saq_screens/interests_homescreen.dart';
import 'package:aspire/screens/onboarding_screens/onboarding1.dart';
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

  static final String recommendedLearningPath = '/recommendedLearningPath';

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
<<<<<<< Updated upstream
    saqInterestsQuizscreen: (context) => const InterestsQuizscreen(),
=======
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

    recommendedLearningPath: (context) => const RecommendedLearningPath(recommendedPath: null,),
>>>>>>> Stashed changes
  };
}
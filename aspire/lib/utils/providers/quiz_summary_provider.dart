import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/quiz_summary.dart';
import 'quiz_provider.dart';

class QuizSummaryNotifier extends Notifier<QuizSummary> {
  @override
  QuizSummary build() {
    return QuizSummary(
      analyzeQuizSummary: '', 
      dominantInterest1Trait: '', 
      dominantInterest1Score: 0, 
      dominantInterest1ImagePath: '', 
      dominantInterest2Trait: '', 
      dominantInterest2Score: 0, 
      dominantInterest2ImagePath: '', 
      keyStrength1Trait: '', 
      keyStrength1Score: 0, 
      keyStrength1ImagePath: '', 
      keyStrength2Trait: '', 
      keyStrength2Score: 0, 
      keyStrength2ImagePath: '', 
      coreValue1Trait: '', 
      coreValue1Score: 0, 
      coreValue1ImagePath: '', 
      coreValue2Trait: '', 
      coreValue2Score: 0, 
      coreValue2ImagePath: '', 
      workValue1: '', 
      workValue2: '', 
      workValue3: '', 
      workValue4: '', 
      workValueImagePath1: '', 
      workValueImagePath2: '', 
      workValueTitle1: '', 
      workValueTitle2: '', 
      isCompleted: false, 
      hasStarted: false, 
      currentSection: 1
    );
  }

  void updateQuizSummaryData() {
    final quizQuestions = ref.read(quizNotifierProvider);

    String analyzeQuizSummary = "";

    String dominantInterest1Trait = "";
    int dominantInterest1Score = 0;
    String dominantInterest1ImagePath = "";

    String dominantInterest2Trait = "";
    int dominantInterest2Score = 0;
    String dominantInterest2ImagePath = "";

    String keyStrength1Trait = "";
    double keyStrength1Score = 0;
    String keyStrength1ImagePath = "";

    String keyStrength2Trait = "";
    double keyStrength2Score = 0;
    String keyStrength2ImagePath = "";

    String coreValue1Trait = "";
    double coreValue1Score = 0;
    String coreValue1ImagePath = "";

    String coreValue2Trait = "";
    double coreValue2Score = 0;
    String coreValue2ImagePath = "";

    String workValue1 = "";
    String workValue2 = "";
    String workValue3 = "";
    String workValue4 = "";
    String workValueImagePath1 = "";
    String workValueImagePath2 = "";
    String workValueTitle1 = "";
    String workValueTitle2 = "";

    Map<String, int> section1Scores = {};

    int scoreRealistic = quizQuestions[0].chosenAnswer + quizQuestions[1].chosenAnswer + 
        quizQuestions[2].chosenAnswer + quizQuestions[3].chosenAnswer + quizQuestions[4].chosenAnswer;
    int scoreInvestigative = quizQuestions[5].chosenAnswer + quizQuestions[6].chosenAnswer + 
        quizQuestions[7].chosenAnswer + quizQuestions[8].chosenAnswer + quizQuestions[9].chosenAnswer;
    int scoreArtistic = quizQuestions[10].chosenAnswer + quizQuestions[11].chosenAnswer + 
        quizQuestions[12].chosenAnswer + quizQuestions[13].chosenAnswer + quizQuestions[14].chosenAnswer;
    int scoreSocial = quizQuestions[15].chosenAnswer + quizQuestions[16].chosenAnswer + 
        quizQuestions[17].chosenAnswer + quizQuestions[18].chosenAnswer + quizQuestions[19].chosenAnswer;
    int scoreEnterprising = quizQuestions[20].chosenAnswer + quizQuestions[21].chosenAnswer + 
        quizQuestions[22].chosenAnswer + quizQuestions[23].chosenAnswer + quizQuestions[24].chosenAnswer;
    int scoreConventional = quizQuestions[25].chosenAnswer + quizQuestions[26].chosenAnswer + 
        quizQuestions[27].chosenAnswer + quizQuestions[28].chosenAnswer + quizQuestions[29].chosenAnswer;

    section1Scores['Realistic'] = scoreRealistic;
    section1Scores['Investigative'] = scoreInvestigative;
    section1Scores['Artistic'] = scoreArtistic;
    section1Scores['Social'] = scoreSocial;
    section1Scores['Enterprising'] = scoreEnterprising;
    section1Scores['Conventional'] = scoreConventional;

    var section1ScoresSorted = section1Scores.entries.toList()
      ..sort((e1, e2) => e1.value.compareTo(e2.value));


    Map<String, double> section2Scores = {};

    section2Scores['Tech/Digital'] = (quizQuestions[30].chosenAnswer).toDouble();
    section2Scores['Communication'] = (quizQuestions[31].chosenAnswer + quizQuestions[32].chosenAnswer) / 2;
    section2Scores['Analytical/Logic'] = (quizQuestions[33].chosenAnswer + quizQuestions[37].chosenAnswer) / 2;
    section2Scores['Leadership'] = (quizQuestions[34].chosenAnswer + quizQuestions[35].chosenAnswer) / 2;
    section2Scores['Creative/Design'] = (quizQuestions[36].chosenAnswer).toDouble();

    var section2ScoresSorted = section2Scores.entries.toList()
      ..sort((e1, e2) => e1.value.compareTo(e2.value));


    Map<String, double> section3Scores = {};

    section3Scores['Wealth/Status'] = (quizQuestions[38].chosenAnswer + quizQuestions[43].chosenAnswer) / 2;
    section3Scores['Helping Society'] = (quizQuestions[40].chosenAnswer).toDouble();
    section3Scores['Work-Life Balance'] = (quizQuestions[39].chosenAnswer).toDouble();
    section3Scores['Freedom/Independence'] = (quizQuestions[41].chosenAnswer + quizQuestions[44].chosenAnswer) / 2;
    section3Scores['Security/Stability'] = (quizQuestions[42].chosenAnswer).toDouble();

    var section3ScoresSorted = section3Scores.entries.toList()
      ..sort((e1, e2) => e1.value.compareTo(e2.value));

    Map<String, String> section4Scores = {};

    section4Scores['EnvironmentA'] = "Independent / Private";
    section4Scores['EnvironmentB'] = "Collaborative / Team";
    section4Scores['FocusA'] = "Deep Focus";
    section4Scores['FocusB'] = "Multi-task";
    section4Scores['RiskA'] = "Steady / Reliable";
    section4Scores['RiskB'] = "Risk Taker";
    section4Scores['ThinkingA'] = "Concrete / Practical";
    section4Scores['ThinkingB'] = "Abstract / Visionary";
    

    dominantInterest1Trait = section1ScoresSorted[5].key; 
    dominantInterest1Score = section1ScoresSorted[5].value; 

    dominantInterest2Trait = section1ScoresSorted[4].key; 
    dominantInterest2Score = section1ScoresSorted[4].value; 

    keyStrength1Trait = section2ScoresSorted[4].key; 
    keyStrength1Score = section2ScoresSorted[4].value; 

    keyStrength2Trait = section2ScoresSorted[3].key; 
    keyStrength2Score = section2ScoresSorted[3].value; 

    coreValue1Trait = section3ScoresSorted[4].key; 
    coreValue1Score = section3ScoresSorted[4].value; 

    coreValue2Trait = section3ScoresSorted[3].key; 
    coreValue2Score = section3ScoresSorted[3].value; 

    

    if (quizQuestions[45].chosenAnswer == 0) {
      workValue1 = section4Scores['EnvironmentA']!;
    } else if (quizQuestions[45].chosenAnswer == 1) {
      workValue1 = section4Scores['EnvironmentB']!;
    }

    if (quizQuestions[46].chosenAnswer == 0) {
      workValue2 = section4Scores['FocusA']!;
    } else if (quizQuestions[46].chosenAnswer == 1) {
      workValue2 = section4Scores['FocusB']!;
    }

    if (quizQuestions[47].chosenAnswer == 0) {
      workValue3 = section4Scores['RiskA']!;
    } else if (quizQuestions[47].chosenAnswer == 1) {
      workValue3 = section4Scores['RiskB']!;
    }

    if (quizQuestions[48].chosenAnswer == 0) {
      workValue4 = section4Scores['ThinkingA']!;
    } else if (quizQuestions[48].chosenAnswer == 1) {
      workValue4 = section4Scores['ThinkingB']!;
    }


    if (workValue3 == section4Scores['RiskB']!) {
      workValueTitle1 = workValue3;
      workValueImagePath1 = "assets/quiz_results/Risk-Taker.png";
    }

    if (workValue4 == section4Scores['ThinkingB']!) {

      if (workValueTitle1 == "") {
        workValueTitle1 = workValue4;
        workValueImagePath1 = "assets/quiz_results/Abstract.png";
      } else {
        workValueTitle2 = workValue4;
        workValueImagePath2 = "assets/quiz_results/Abstract.png";
      }
    }

    if (workValueTitle1 == "") {
      workValueTitle1 = workValue1;

      if (workValue1 == section4Scores['EnvironmentA']!) {
        workValueImagePath1 = "assets/quiz_results/Independent.png";
      } else if (workValue1 == section4Scores['EnvironmentB']!) {
        workValueImagePath1 = "assets/quiz_results/Collaborative.png"; 
      }
    } else if (workValueTitle2 == "") {
      workValueTitle2 = workValue1;

      if (workValue1 == section4Scores['EnvironmentA']!) {
        workValueImagePath2 = "assets/quiz_results/Independent.png";
      } else if (workValue1 == section4Scores['EnvironmentB']!) {
        workValueImagePath2 = "assets/quiz_results/Collaborative.png"; 
      }
    }

    if (workValueTitle2 == "") {
      workValueTitle2 = workValue4;
      workValueImagePath2 = "assets/quiz_results/Concrete.png";
    }

    switch (dominantInterest1Trait) {
      case "Realistic": dominantInterest1ImagePath = "assets/quiz_results/Realistic.png"; break;
      case "Investigative": dominantInterest1ImagePath = "assets/quiz_results/Investigative.png"; break;
      case "Artistic": dominantInterest1ImagePath = "assets/quiz_results/Artistic.png"; break;
      case "Social": dominantInterest1ImagePath = "assets/quiz_results/Social.png"; break;
      case "Enterprising": dominantInterest1ImagePath = "assets/quiz_results/Enterprising.png"; break;
      case "Conventional": dominantInterest1ImagePath = "assets/quiz_results/Conventional.png"; break;
    }

    switch (dominantInterest2Trait) {
      case "Realistic": dominantInterest2ImagePath = "assets/quiz_results/Realistic.png"; break;
      case "Investigative": dominantInterest2ImagePath = "assets/quiz_results/Investigative.png"; break;
      case "Artistic": dominantInterest2ImagePath = "assets/quiz_results/Artistic.png"; break;
      case "Social": dominantInterest2ImagePath = "assets/quiz_results/Social.png"; break;
      case "Enterprising": dominantInterest2ImagePath = "assets/quiz_results/Enterprising.png"; break;
      case "Conventional": dominantInterest2ImagePath = "assets/quiz_results/Conventional.png"; break;
    }

    switch (keyStrength1Trait) {
      case "Tech/Digital": keyStrength1ImagePath = "assets/quiz_results/Tech-Digital.png"; break;
      case "Communication": keyStrength1ImagePath = "assets/quiz_results/Communication.png"; break;
      case "Analytical/Logic": keyStrength1ImagePath = "assets/quiz_results/Analytical-Logic.png"; break;
      case "Leadership": keyStrength1ImagePath = "assets/quiz_results/Leadership.png"; break;
      case "Creative/Design": keyStrength1ImagePath = "assets/quiz_results/Creative-Design.png"; break;
    }

    switch (keyStrength2Trait) {
      case "Tech/Digital": keyStrength2ImagePath = "assets/quiz_results/Tech-Digital.png"; break;
      case "Communication": keyStrength2ImagePath = "assets/quiz_results/Communication.png"; break;
      case "Analytical/Logic": keyStrength2ImagePath = "assets/quiz_results/Analytical-Logic.png"; break;
      case "Leadership": keyStrength2ImagePath = "assets/quiz_results/Leadership.png"; break;
      case "Creative/Design": keyStrength2ImagePath = "assets/quiz_results/Creative-Design.png"; break;
    }

    switch (coreValue1Trait) {
      case "Wealth/Status": coreValue1ImagePath = "assets/quiz_results/High-Income.png"; break;
      case "Helping Society": coreValue1ImagePath = "assets/quiz_results/Helping-Society.png"; break;
      case "Work-Life Balance": coreValue1ImagePath = "assets/quiz_results/Work-Life-Balance.png"; break;
      case "Freedom/Independence": coreValue1ImagePath = "assets/quiz_results/Creativity-Freedom.png"; break;
      case "Security/Stability": coreValue1ImagePath = "assets/quiz_results/Stability-Security.png"; break;
    }

    switch (coreValue2Trait) {
      case "Wealth/Status": coreValue2ImagePath = "assets/quiz_results/High-Income.png"; break;
      case "Helping Society": coreValue2ImagePath = "assets/quiz_results/Helping-Society.png"; break;
      case "Work-Life Balance": coreValue2ImagePath = "assets/quiz_results/Work-Life-Balance.png"; break;
      case "Freedom/Independence": coreValue2ImagePath = "assets/quiz_results/Creativity-Freedom.png"; break;
      case "Security/Stability": coreValue2ImagePath = "assets/quiz_results/Stability-Security.png"; break;
    }


    analyzeQuizSummary = 
    """ 
    Act as a Career Counselor. Analyze this student profile based on their quiz results:

    Dominant Interests: '$dominantInterest1Trait' (Score $dominantInterest1Score/25) and '$dominantInterest2Trait' (Score $dominantInterest2Score/25).
    Key Strengths: '$keyStrength1Trait' (Score $keyStrength1Score/5) and '$keyStrength2Trait' (Score $keyStrength2Score/5).
    Core Values: They prioritize '$coreValue1Trait' and '$coreValue2Trait'.
    Work Style: They prefer '$workValue4' tasks and '$workValue1' environments. When working, they like to $workValue2 and they are $workValue3.
    
    Based on this user profile, generate 5 career recommendations based on the schema.
    """;

    

    state = QuizSummary(
      analyzeQuizSummary: analyzeQuizSummary, 
      dominantInterest1Trait: dominantInterest1Trait, 
      dominantInterest1Score: dominantInterest1Score, 
      dominantInterest1ImagePath: dominantInterest1ImagePath, 
      dominantInterest2Trait: dominantInterest2Trait, 
      dominantInterest2Score: dominantInterest2Score, 
      dominantInterest2ImagePath: dominantInterest2ImagePath, 
      keyStrength1Trait: keyStrength1Trait, 
      keyStrength1Score: keyStrength1Score, 
      keyStrength1ImagePath: keyStrength1ImagePath, 
      keyStrength2Trait: keyStrength2Trait, 
      keyStrength2Score: keyStrength2Score, 
      keyStrength2ImagePath: keyStrength2ImagePath, 
      coreValue1Trait: coreValue1Trait, 
      coreValue1Score: coreValue1Score, 
      coreValue1ImagePath: coreValue1ImagePath, 
      coreValue2Trait: coreValue2Trait, 
      coreValue2Score: coreValue2Score, 
      coreValue2ImagePath: coreValue2ImagePath,
      workValue1: workValue1, 
      workValue2: workValue2, 
      workValue3: workValue3, 
      workValue4: workValue4, 
      workValueImagePath1: workValueImagePath1, 
      workValueImagePath2: workValueImagePath2, 
      workValueTitle1: workValueTitle1, 
      workValueTitle2: workValueTitle2, 
      isCompleted: state.isCompleted, 
      hasStarted: state.hasStarted, 
      currentSection: state.currentSection
    );
  }

  void updateHasStarted() {
    state.hasStarted = true;
  }

  void updateIsCompleted() {
    state.isCompleted = true;
  }

  void updateCurrentSection(int i) {
    state.currentSection = i;
  }

  void updateStateToFirebaseState(QuizSummary newState) {
    state = newState;
  }

  void resetQuizSummaryData() {
    state = build();
  }
}


final quizSummaryNotifierProvider = NotifierProvider<QuizSummaryNotifier, QuizSummary>(() {
  return QuizSummaryNotifier();
});
class QuizSummary {
  QuizSummary({required this.analyzeQuizSummary, required this.dominantInterest1Trait, 
  required this.dominantInterest1Score, required this.dominantInterest2Trait, 
  required this.dominantInterest2Score, required this.keyStrength1Trait, 
  required this.keyStrength1Score, required this.keyStrength2Trait, 
  required this.keyStrength2Score, required this.coreValue1Trait, 
  required this.coreValue1Score, required this.coreValue2Trait, 
  required this.coreValue2Score, required this.workValue1, 
  required this.workValue2, required this.workValue3, 
  required this.workValue4, required this.dominantInterest1ImagePath, 
  required this.dominantInterest2ImagePath, 
  required this.keyStrength1ImagePath, required this.keyStrength2ImagePath, 
  required this.coreValue1ImagePath, required this.coreValue2ImagePath, 
  required this.workValueImagePath1, required this.workValueImagePath2, 
  required this.workValueTitle1, required this.workValueTitle2});
  
  final String analyzeQuizSummary;

  final String dominantInterest1Trait;
  final int dominantInterest1Score;
  final String dominantInterest1ImagePath;

  final String dominantInterest2Trait;
  final int dominantInterest2Score;
  final String dominantInterest2ImagePath;

  final String keyStrength1Trait;
  final double keyStrength1Score;
  final String keyStrength1ImagePath;

  final String keyStrength2Trait;
  final double keyStrength2Score;
  final String keyStrength2ImagePath;

  final String coreValue1Trait;
  final double coreValue1Score;
  final String coreValue1ImagePath;

  final String coreValue2Trait;
  final double coreValue2Score;
  final String coreValue2ImagePath;

  final String workValue1;
  final String workValue2;
  final String workValue3;
  final String workValue4;
  final String workValueImagePath1;
  final String workValueImagePath2;
  final String workValueTitle1;
  final String workValueTitle2;
}
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
  required this.workValueTitle1, required this.workValueTitle2, 
  this.isCompleted, this.hasStarted, this.currentSection});
  
  bool? isCompleted;
  bool ?hasStarted;
  int? currentSection;

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

  Map<String, dynamic> toMap() {
    return {
      'isCompleted':isCompleted,
      'hasStarted':hasStarted,
      'currentSection':currentSection,

      'analyzeQuizSummary':analyzeQuizSummary,

      'dominantInterest1Trait':dominantInterest1Trait,
      'dominantInterest1Score':dominantInterest1Score,
      'dominantInterest1ImagePath':dominantInterest1ImagePath,

      'dominantInterest2Trait':dominantInterest2Trait,
      'dominantInterest2Score':dominantInterest2Score,
      'dominantInterest2ImagePath':dominantInterest2ImagePath,

      'keyStrength1Trait':keyStrength1Trait,
      'keyStrength1Score':keyStrength1Score,
      'keyStrength1ImagePath':keyStrength1ImagePath,

      'keyStrength2Trait':keyStrength2Trait,
      'keyStrength2Score':keyStrength2Score,
      'keyStrength2ImagePath':keyStrength2ImagePath,

      'coreValue1Trait':coreValue1Trait,
      'coreValue1Score':coreValue1Score,
      'coreValue1ImagePath':coreValue1ImagePath,

      'coreValue2Trait':coreValue2Trait,
      'coreValue2Score':coreValue2Score,
      'coreValue2ImagePath':coreValue2ImagePath,

      'workValue1':workValue1,
      'workValue2':workValue2,
      'workValue3':workValue3,
      'workValue4':workValue4,
      'workValueImagePath1':workValueImagePath1,
      'workValueImagePath2':workValueImagePath2,
      'workValueTitle1':workValueTitle1,
      'workValueTitle2':workValueTitle2
    };
  }

  factory QuizSummary.fromMap(Map<String, dynamic> map) {
    return QuizSummary(
      // Required String fields
      analyzeQuizSummary: map['analyzeQuizSummary'] as String,
      dominantInterest1Trait: map['dominantInterest1Trait'] as String,
      dominantInterest1ImagePath: map['dominantInterest1ImagePath'] as String,
      dominantInterest2Trait: map['dominantInterest2Trait'] as String,
      dominantInterest2ImagePath: map['dominantInterest2ImagePath'] as String,
      keyStrength1Trait: map['keyStrength1Trait'] as String,
      keyStrength1ImagePath: map['keyStrength1ImagePath'] as String,
      keyStrength2Trait: map['keyStrength2Trait'] as String,
      keyStrength2ImagePath: map['keyStrength2ImagePath'] as String,
      coreValue1Trait: map['coreValue1Trait'] as String,
      coreValue1ImagePath: map['coreValue1ImagePath'] as String,
      coreValue2Trait: map['coreValue2Trait'] as String,
      coreValue2ImagePath: map['coreValue2ImagePath'] as String,
      workValue1: map['workValue1'] as String,
      workValue2: map['workValue2'] as String,
      workValue3: map['workValue3'] as String,
      workValue4: map['workValue4'] as String,
      workValueImagePath1: map['workValueImagePath1'] as String,
      workValueImagePath2: map['workValueImagePath2'] as String,
      workValueTitle1: map['workValueTitle1'] as String,
      workValueTitle2: map['workValueTitle2'] as String,

      // Required int fields
      dominantInterest1Score: map['dominantInterest1Score'] as int,
      dominantInterest2Score: map['dominantInterest2Score'] as int,

      // Required double fields (Note: If your data source stores these as int, you might need .toDouble())
      keyStrength1Score: (map['keyStrength1Score'] as num).toDouble(),
      keyStrength2Score: (map['keyStrength2Score'] as num).toDouble(),
      coreValue1Score: (map['coreValue1Score'] as num).toDouble(),
      coreValue2Score: (map['coreValue2Score'] as num).toDouble(),

      // Optional fields (if null in the map, they remain null in the object)
      isCompleted: map['isCompleted'] as bool?,
      hasStarted: map['hasStarted'] as bool?,
      currentSection: map['currentSection'] as int?,
    );
  }
}
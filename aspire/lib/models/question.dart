class Question {
  Question({required this.questionID, required this.questionText, required this.category, required this.chosenAnswer, });

  final String questionID;
  final String questionText;
  final String category;
  int chosenAnswer;

  Map<String, dynamic> toMap() {
    return {
      'questionID': questionID,
      'questionText': questionText,
      'category': category,
      'chosenAnswer': chosenAnswer,
    };
  }
}
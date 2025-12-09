import 'package:aspire/models/question.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuizNotifier extends Notifier<List<Question>> {
  @override
  List<Question> build() {
    return [
      Question(questionID: "01", category: "Section 1", chosenAnswer: 5, 
        questionText: "Building or assembling things (like furniture or computer hardware)."),
      Question(questionID: "02", category: "Section 1", chosenAnswer: 5, 
        questionText: "Working with tools, machinery, or heavy equipment."),
      Question(questionID: "03", category: "Section 1", chosenAnswer: 5, 
        questionText: "Being outdoors, gardening, or working in nature."),
      Question(questionID: "04", category: "Section 1", chosenAnswer: 5, 
        questionText: "Repairing broken electronics or household appliances."),
      Question(questionID: "05", category: "Section 1", chosenAnswer: 5, 
        questionText: "Doing physical activities that require strength and coordination."),
      Question(questionID: "06", category: "Section 1", chosenAnswer: 5, 
        questionText: "Solving complex math problems or logical puzzles."),
      Question(questionID: "07", category: "Section 1", chosenAnswer: 5, 
        questionText: "Conducting scientific experiments or analyzing lab results."),
      Question(questionID: "08", category: "Section 1", chosenAnswer: 5, 
        questionText: "Reading technical articles or non-fiction to learn something new."),
      Question(questionID: "09", category: "Section 1", chosenAnswer: 5, 
        questionText: "Analyzing data to find patterns or trends."),
      Question(questionID: "10", category: "Section 1", chosenAnswer: 5, 
        questionText: "Figuring out why something works the way it does."),
      Question(questionID: "11", category: "Section 1", chosenAnswer: 5, 
        questionText: "Sketching, painting, or creating digital graphics."),
      Question(questionID: "12", category: "Section 1", chosenAnswer: 5, 
        questionText: "Writing creative stories, poetry, or scripts."),
      Question(questionID: "13", category: "Section 1", chosenAnswer: 5, 
        questionText: "Playing a musical instrument or composing music."),
      Question(questionID: "14", category: "Section 1", chosenAnswer: 5, 
        questionText: "Designing fashion, interiors, or websites."),
      Question(questionID: "15", category: "Section 1", chosenAnswer: 5, 
        questionText: "Performing in front of an audience (acting, dancing, speaking)."),
      Question(questionID: "16", category: "Section 1", chosenAnswer: 5, 
        questionText: "Teaching or training others how to do something."),
      Question(questionID: "17", category: "Section 1", chosenAnswer: 5, 
        questionText: "Helping people solve their personal or emotional problems."),
      Question(questionID: "18", category: "Section 1", chosenAnswer: 5, 
        questionText: "Volunteering for a charity or community organization."),
      Question(questionID: "19", category: "Section 1", chosenAnswer: 5, 
        questionText: "Taking care of children, the elderly, or the sick."),
      Question(questionID: "20", category: "Section 1", chosenAnswer: 5, 
        questionText: "Working in a team where collaboration is constant."),
      Question(questionID: "21", category: "Section 1", chosenAnswer: 5, 
        questionText: "Selling a product or idea to potential customers."),
      Question(questionID: "22", category: "Section 1", chosenAnswer: 5, 
        questionText: "Leading a team or managing a group project."),
      Question(questionID: "23", category: "Section 1", chosenAnswer: 5, 
        questionText: "Negotiating deals or debating to win an argument."),
      Question(questionID: "24", category: "Section 1", chosenAnswer: 5, 
        questionText: "Starting your own business or side project."),
      Question(questionID: "25", category: "Section 1", chosenAnswer: 5, 
        questionText: "Giving presentations or public speeches."),
      Question(questionID: "26", category: "Section 1", chosenAnswer: 5, 
        questionText: "Organizing files, data, or schedules."),
      Question(questionID: "27", category: "Section 1", chosenAnswer: 5, 
        questionText: "Creating detailed spreadsheets and managing budgets."),
      Question(questionID: "28", category: "Section 1", chosenAnswer: 5, 
        questionText: "Following strict procedures and rules to ensure safety/quality."),
      Question(questionID: "29", category: "Section 1", chosenAnswer: 5, 
        questionText: "Proofreading documents for spelling and grammar errors."),
      Question(questionID: "30", category: "Section 1", chosenAnswer: 5, 
        questionText: "Handling logistics, inventory, or record-keeping."),
      Question(questionID: "31", category: "Section 2", chosenAnswer: 5, 
        questionText: "Tech Literacy: Learning new software, apps, or coding languages."),
      Question(questionID: "32", category: "Section 2", chosenAnswer: 5, 
        questionText: "Writing: Expressing ideas clearly in emails, reports, or essays."),
      Question(questionID: "33", category: "Section 2", chosenAnswer: 5, 
        questionText: "Public Speaking: Speaking confidently to a group of people."),
      Question(questionID: "34", category: "Section 2", chosenAnswer: 5, 
        questionText: "Critical Thinking: Evaluating arguments and identifying logical flaws."),
      Question(questionID: "35", category: "Section 2", chosenAnswer: 5, 
        questionText: "Conflict Resolution: Helping two opposing sides find a compromise."),
      Question(questionID: "36", category: "Section 2", chosenAnswer: 5, 
        questionText: "Time Management: Prioritizing tasks and meeting deadlines without stress."),
      Question(questionID: "37", category: "Section 2", chosenAnswer: 5, 
        questionText: "Visual Design: Understanding color, layout, and aesthetics."),
      Question(questionID: "38", category: "Section 2", chosenAnswer: 5, 
        questionText: "Mathematics: Working with numbers, statistics, or financial figures."),
      Question(questionID: "39", category: "Section 3", chosenAnswer: 5, 
        questionText: "High Income: Earning a salary significantly above the average."),
      Question(questionID: "40", category: "Section 3", chosenAnswer: 5, 
        questionText: "Work-Life Balance: Having strict boundaries between work and personal time."),
      Question(questionID: "41", category: "Section 3", chosenAnswer: 5, 
        questionText: "Social Impact: Knowing my work makes the world a better place."),
      Question(questionID: "42", category: "Section 3", chosenAnswer: 5, 
        questionText: "Creativity: Having the freedom to solve problems my own way."),
      Question(questionID: "43", category: "Section 3", chosenAnswer: 5, 
        questionText: "Stability: Having a secure job with low risk of firing."),
      Question(questionID: "44", category: "Section 3", chosenAnswer: 5, 
        questionText: "Prestige: Being recognized, famous, or respected for my title."),
      Question(questionID: "45", category: "Section 3", chosenAnswer: 5, 
        questionText: "Autonomy: Working independently with little supervision."),
      Question(questionID: "46", category: "Section 4", chosenAnswer: 5, 
        questionText: "Environment:"),
      Question(questionID: "47", category: "Section 4", chosenAnswer: 5, 
        questionText: "Focus:"),
      Question(questionID: "48", category: "Section 4", chosenAnswer: 5, 
        questionText: "Risk:"),
      Question(questionID: "49", category: "Section 4", chosenAnswer: 5, 
        questionText: "Thinking Style:"),
    ];
  }

  void updateActiveIndex(int questionID, int answerIndex) {
    List<Question> tempState = List.of(state);

    tempState[questionID].chosenAnswer = answerIndex;

    state = tempState;
  }

  void updateStatetoFirebaseState(List<Question> newState) {
    state = newState;
  }

  void resetQuizData() {
    state = build();
  }
}

final quizNotifierProvider = NotifierProvider<QuizNotifier, List<Question>>(() {
  return QuizNotifier();
});
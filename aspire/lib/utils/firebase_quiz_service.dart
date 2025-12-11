import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/question.dart';
import 'providers/quiz_provider.dart';

class FirebaseQuizService {
  Future<Map<String, dynamic>> initializeAndGetQuizProgress(WidgetRef ref) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      // print('Error: No user signed in!');
      // Handle unauthenticated state, maybe navigate to login
      return {};
    }

    final userId = user.uid;
    final userQuizDocRef = FirebaseFirestore.instance
        .collection('user_quiz_progress') // A new collection for ongoing progress
        .doc(userId);

    final docSnapshot = await userQuizDocRef.get();

    if (!docSnapshot.exists) {
      // If no progress document exists, initialize it
      // print('Initializing new quiz progress for user: $userId');

      List<Question> initialState = [
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

      ref.read(quizNotifierProvider.notifier).updateStatetoFirebaseState(initialState);

      Map<String, dynamic> modelMap = {};
        for (var model in initialState) {
          modelMap[model.questionID] = model.toMap(); // Using id as key, and the model object as value
        }



      final initialProgress = modelMap;

      await userQuizDocRef.set(initialProgress);
      return initialProgress;
    } else {
      // If progress exists, return it
      // print('Loading existing quiz progress for user: $userId');

      List<Question> questionData = [];

      Map<String, Question> modelMap = {};
      docSnapshot.data()!.forEach((key, value) {
        modelMap[key] = Question(
          questionID: value['questionID'],
          questionText: value['questionText'],
          category: value['category'],
          chosenAnswer: value['chosenAnswer'],
        );
      });

      for (var questionModel in modelMap.values) {
        questionData.add(questionModel);
      }

      questionData.sort((a, b) => a.questionID.compareTo(b.questionID));

      ref.read(quizNotifierProvider.notifier).updateStatetoFirebaseState(questionData);
      return docSnapshot.data()!;
    }
  }

  Future<void> updateQuizProgress(WidgetRef ref) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      // print('Error: No user signed in!');
      return;
    }

    final userId = user.uid;
    final userQuizDocRef = FirebaseFirestore.instance
        .collection('user_quiz_progress')
        .doc(userId);

    // Use a Map for partial updates
    List<Question> initialState = ref.read(quizNotifierProvider);

    Map<String, dynamic> modelMap = {};
        for (var model in initialState) {
          modelMap[model.questionID] = model.toMap(); // Using id as key, and the model object as value
        }

      final updateData = modelMap;

    await userQuizDocRef.update(updateData);
  }
}
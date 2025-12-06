import 'package:aspire/models/quiz_summary.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'providers/quiz_summary_provider.dart';

class FirebaseQuizSummaryService {
  Future<Map<String, dynamic>> initializeAndGetQuizSummary(WidgetRef ref) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      print('Error: No user signed in!');
      // Handle unauthenticated state, maybe navigate to login
      return {};
    }

    final userId = user.uid;
    final userQuizSummaryDocRef = FirebaseFirestore.instance
        .collection('user_quiz_summary') // A new collection for ongoing progress
        .doc(userId);

    final docSnapshot = await userQuizSummaryDocRef.get();

    if (!docSnapshot.exists) {
      // If no progress document exists, initialize it
      print('Initializing new quiz progress for user: $userId');

      QuizSummary initialState = QuizSummary(
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
      

      ref.read(quizSummaryNotifierProvider.notifier).updateStateToFirebaseState(initialState);

      Map<String, dynamic> modelMap = ref.read(quizSummaryNotifierProvider).toMap();

      final initialProgress = modelMap;

      await userQuizSummaryDocRef.set(initialProgress);
      return initialProgress;
    } else {
      // If progress exists, return it
      print('Loading existing quiz progress for user: $userId');
      QuizSummary questionData = QuizSummary.fromMap(docSnapshot.data()!);


      ref.read(quizSummaryNotifierProvider.notifier).updateStateToFirebaseState(questionData);
      return docSnapshot.data()!;
    }
  }

  Future<void> updateQuizSummary(WidgetRef ref) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      print('Error: No user signed in!');
      return;
    }

    final userId = user.uid;
    final userQuizDocRef = FirebaseFirestore.instance
        .collection('user_quiz_summary')
        .doc(userId);

    // Use a Map for partial updates
      

    QuizSummary initialState = ref.read(quizSummaryNotifierProvider);
    Map<String, dynamic> modelMap = {};
    modelMap = initialState.toMap();

    final updateData = modelMap;

    await userQuizDocRef.update(updateData);
  }
}
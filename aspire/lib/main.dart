import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'firebase_options.dart';
import 'models/static/named_routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(
    const ProviderScope(
      child: Aspire()),
    );
}

class Aspire extends StatelessWidget {
  const Aspire({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Course Enrollment App', 
      initialRoute: NamedRoutes.onboarding1,
      // initialRoute: NamedRoutes.skillAssessmentQuiz,
      routes: NamedRoutes.routes,
    );
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/static/career_response.dart';
import '../firebase_ai_generate_career_recommendation_service.dart';
import 'quiz_summary_provider.dart';

class GeneratedCareerNotifier extends Notifier<CareerResponse> {
  final FirebaseAiGenerateCareerRecommendationsService _service = FirebaseAiGenerateCareerRecommendationsService();
  
  
  @override
  CareerResponse build() {
    return CareerResponse(
      userArchetype: '',
      profileAnalysis: '',
      recommendedCareers: [], 
      hasGenerated: false,
    );
  }

  Future<CareerResponse?> getPromptOutput() async {
    final userPrompt = ref.read(quizSummaryNotifierProvider);

    CareerResponse? responsePrompt = await _service.analyzeProfile(userPrompt.analyzeQuizSummary);

    state = responsePrompt!;

    _service.updateGeneratedCareer(state);

    return responsePrompt;
  }

  Future<CareerResponse?> getState() async {
    if (state.hasGenerated == false) {
      return getPromptOutput();
    } else if (state.hasGenerated == true){
      return state;
    }
    return null;
  }

  void updateStateToFirebaseState(CareerResponse newState) {
    state = newState;
  }

  void resetGeneratedCareerData() {
    state = build();
  }

}

final generatedCareerNotifierProvider = NotifierProvider<GeneratedCareerNotifier, CareerResponse>(() {
  return GeneratedCareerNotifier();
});
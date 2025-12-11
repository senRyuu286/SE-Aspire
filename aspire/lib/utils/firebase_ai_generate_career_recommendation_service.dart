import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/static/career_response.dart';
import 'providers/generated_career_provider.dart';

class FirebaseAiGenerateCareerRecommendationsService {
  late final GenerativeModel _model;

  FirebaseAiGenerateCareerRecommendationsService() {
    final careerSchema = Schema.object(
      properties: {
        'user_archetype': Schema.string(
          description: "A creative 2-3 word title describing the user's profile (e.g., 'Creative Technologist').",
        ),
        'profile_analysis': Schema.string(
          description: "A brief paragraph analyzing how the user's interests, skills, and values combine. Make it short and concise.",
        ),
        'recommended_careers': Schema.array(
          description: "A list of the top 5 career recommendations.",
          items: Schema.object(
            properties: {
              'job_title': Schema.string(
                description: "The name of the career role.",
              ),
              'match_percentage': Schema.integer(
                description: "A score from 0 to 100 indicating fit.",
              ),
              'salary': Schema.string(
                description: "Salary range for this role in Philippine Peso and base the salary on jobs found in Philippines. Only return the salary range.",
              ),
              'why_it_fits': Schema.string(
                description: "Explanation referencing the user's specific quiz results. Write it straight to the point.",
              ),
              'day_to_day': Schema.string(
                description: "A one-sentence summary of what this job actually involves.",
              ),
              'required_skills': Schema.array(
                items: Schema.string(),
                description: "List of 3 essential hard skills needed for this job. Keep it short and limit to two words.",
              ),

              // For recommended learning path for each career
              'recommended_path': Schema.object(
                description: "A structured path of educational steps to reach this career, specific to the Philippine educational system.",
                properties: {
                  'shs_track': Schema.string(
                    description: "The recommended Senior High School (SHS) academic track or TVL strand (e.g., 'STEM', 'ABM', 'ICT').",
                  ),
                  'college_course': Schema.string(
                    description: "The recommended bachelor's degree course (e.g., 'BS Computer Science', 'BS Architecture').",
                  ),
                  // NEW PROPERTY MOVED INSIDE HERE
                  'top_universities': Schema.array(
                    items: Schema.string(),
                    description: "A list of 3 highly recommended universities in the Philippines known for the associated college_course (e.g., 'UP Diliman', 'Ateneo de Manila University', 'De La Salle University').",
                  ),
                  // END OF MOVED PROPERTY
                  'certifications': Schema.array(
                    items: Schema.string(),
                    description: "A list of 2-3 essential certifications or trainings (e.g., 'Google Data Analytics Certificate', 'CPA License').",
                  ),
                },
              ),

            },
          ),
        ),
        'hasGenerated': Schema.boolean(
          description: "Always return true to signifiy that a career recommendation has already been generated",
        ),
      },
    );

    _model = FirebaseAI.googleAI().generativeModel(
      model: 'gemini-2.5-flash',
      generationConfig: GenerationConfig(
        responseMimeType: 'application/json',
        responseSchema: careerSchema,
      ),
    );
  }

  Future<CareerResponse?> analyzeProfile(String promptData) async {
    try {
      // 3. SEND REQUEST
      final response = await _model.generateContent([
        Content.text(promptData),
      ]);

      // print("Raw Gemini Output: ${response.text}"); // Debug print

      if (response.text == null) return null;

      // 4. DECODE JSON
      // Because we enforced JSON Schema, we can safely decode it directly
      final jsonMap = jsonDecode(response.text!);

      return CareerResponse.fromJson(jsonMap);
      
    } catch (e) {
      // print("Error parsing Gemini response: $e");
      return null;
    }
  }

  Future<void> initializeAndGeneratedCareer(WidgetRef ref) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      // print('Error: No user signed in!');
      // Handle unauthenticated state, maybe navigate to login
      return;
    }

    final userId = user.uid;
    final userQuizDocRef = FirebaseFirestore.instance
        .collection('user_career_recommendations') // A new collection for ongoing progress
        .doc(userId);

    final docSnapshot = await userQuizDocRef.get();

    if (!docSnapshot.exists) {
      // If no progress document exists, initialize it
      // print('Initializing new quiz progress for user: $userId');


      final CareerResponse initialState = CareerResponse(
      userArchetype: '',
      profileAnalysis: '',
      recommendedCareers: [], 
      hasGenerated: false,
    );

      ref.read(generatedCareerNotifierProvider.notifier).updateStateToFirebaseState(initialState);

      Map<String, dynamic> modelMap = ref.read(generatedCareerNotifierProvider).toJson();

      final initialProgress = modelMap;

      await userQuizDocRef.set(initialProgress);
    } else {
      final CareerResponse generatedCareer = CareerResponse.fromJson(docSnapshot.data()!);


      ref.read(generatedCareerNotifierProvider.notifier).updateStateToFirebaseState(generatedCareer);
    }    
  }

  Future<void> updateGeneratedCareer(CareerResponse updateState) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      // print('Error: No user signed in!');
      return;
    }

    final userId = user.uid;
    final userQuizDocRef = FirebaseFirestore.instance
        .collection('user_career_recommendations')
        .doc(userId);

    // Use a Map for partial updates

    CareerResponse initialState = updateState;
      

    Map<String, dynamic> modelMap = {};
    modelMap = initialState.toJson();

    final updateData = modelMap;

    await userQuizDocRef.update(updateData);
  }
}
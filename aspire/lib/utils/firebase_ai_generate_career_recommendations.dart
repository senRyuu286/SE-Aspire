// import 'package:firebase_ai/firebase_ai.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class FirebaseAiGenerateCareerRecommendations {

//   final careerSchema = Schema.object(
//     properties: {
//       'user_archetype': Schema.string(
//         description: "A creative 2-3 word title describing the user's profile (e.g., 'Creative Technologist').",
//       ),
//       'profile_analysis': Schema.string(
//         description: "A brief paragraph analyzing how the user's interests, skills, and values combine.",
//       ),
//       'recommended_careers': Schema.array(
//         description: "A list of the top 5 career recommendations.",
//         items: Schema.object(
//           properties: {
//             'job_title': Schema.string(
//               description: "The name of the career role.",
//             ),
//             'match_percentage': Schema.integer(
//               description: "A score from 0 to 100 indicating fit.",
//             ),
//             'why_it_fits': Schema.string(
//               description: "Explanation referencing the user's specific quiz results.",
//             ),
//             'day_to_day': Schema.string(
//               description: "A one-sentence summary of what this job actually involves.",
//             ),
//             'required_skills': Schema.array(
//               items: Schema.string(),
//               description: "List of 3 hard skills needed for this job.",
//             ),
//           },
//         ),
//       ),
//     },
//   );

//   final model = FirebaseAI.googleAI().generativeModel(
//       model: 'gemini-2.5-flash',
//       generationConfig: GenerationConfig(
//         responseMimeType: 'application/json',
//         responseSchema: careerSchema,
//       ),
//     );


  

//   try {
//     final response = await model.generateContent([
//       Content.text(userQuizSummary),
//     ]);
    
//     // The response.text is now a valid JSON string matching your schema
//     print(response.text); 
    
//   } catch (e) {
//     print('Error generating careers: $e');
//   }
// }

// final firebaseAiGenerateCareerRecommendationsProvider = Provider((ref) => FirebaseAiGenerateCareerRecommendations());
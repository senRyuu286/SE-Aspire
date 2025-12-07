import 'career_option.dart';

class CareerResponse {
  final String userArchetype;
  final String profileAnalysis;
  final List<CareerOption> recommendedCareers;
  final bool hasGenerated;

  CareerResponse({
    required this.userArchetype,
    required this.profileAnalysis,
    required this.recommendedCareers, required this.hasGenerated,
  });

  factory CareerResponse.fromJson(Map<String, dynamic> json) {
    return CareerResponse(
      userArchetype: json['user_archetype'] ?? '',
      profileAnalysis: json['profile_analysis'] ?? '',
      recommendedCareers: (json['recommended_careers'] as List<dynamic>?)
              ?.map((x) => CareerOption.fromJson(x))
              .toList() ??
          [], hasGenerated: json['hasGenerated'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_archetype': userArchetype,
      'profile_analysis': profileAnalysis,
      'recommended_careers': recommendedCareers.map((x) => x.toJson()).toList(),
      'hasGenerated': hasGenerated
    };
  }
}
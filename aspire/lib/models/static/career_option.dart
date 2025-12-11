import 'package:aspire/models/static/recommended_path.dart';

class CareerOption {
  final String jobTitle;
  final int matchPercentage;
  final String salary;
  final String whyItFits;
  final String dayToDay;
  final List<String> requiredSkills;
  final RecommendedPath? recommendedPath;

  CareerOption({
    required this.jobTitle,
    required this.matchPercentage,
    required this.salary,
    required this.whyItFits,
    required this.dayToDay,
    required this.requiredSkills,
    required this.recommendedPath,
  });

  factory CareerOption.fromJson(Map<String, dynamic> json) {
    return CareerOption(
      jobTitle: json['job_title'] ?? '',
      matchPercentage: json['match_percentage'] ?? 0,
      salary: json['salary'] ?? '',
      whyItFits: json['why_it_fits'] ?? '',
      dayToDay: json['day_to_day'] ?? '',
      requiredSkills: (json['required_skills'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],

      recommendedPath: json['recommended_path'] != null
        ? RecommendedPath.fromJson(json['recommended_path'])
        : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'job_title': jobTitle,
      'match_percentage': matchPercentage,
      'salary': salary,
      'why_it_fits': whyItFits,
      'day_to_day': dayToDay,
      'required_skills': requiredSkills,
      'recommended_path': recommendedPath?.toJson(),
    };
  }
}
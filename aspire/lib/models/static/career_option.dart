class CareerOption {
  final String jobTitle;
  final int matchPercentage;
  final String salary;
  final String whyItFits;
  final String dayToDay;
  final List<String> requiredSkills;

  CareerOption({
    required this.jobTitle,
    required this.matchPercentage,
    required this.salary,
    required this.whyItFits,
    required this.dayToDay,
    required this.requiredSkills,
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
    };
  }
}
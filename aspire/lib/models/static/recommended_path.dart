class RecommendedPath {
  final String shsTrack;
  final String collegeCourse;
  final List<String> topUniversities;
  final List<String> certifications;

  RecommendedPath({
    required this.shsTrack,
    required this.collegeCourse,
    required this.topUniversities,
    required this.certifications, 
  });

  factory RecommendedPath.fromJson(Map<String, dynamic> json) {
    return RecommendedPath(
      shsTrack: json['shs_track'] ?? '',

      collegeCourse: json['college_course'] ?? '',

      topUniversities: (json['top_universities'] as List<dynamic>?)
        ?.map((e) => e.toString()).toList() ?? [],

      certifications: (json['certifications'] as List<dynamic>?)
        ?.map((e) => e.toString()).toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'shs_track': shsTrack,
      'college_course': collegeCourse,
      'top_universities': topUniversities,
      'certifications': certifications,
    };
  }
}


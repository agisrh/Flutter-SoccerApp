class GoalData {
  String avatar;
  String name;
  String clubLogo;
  String play;
  String goals;

  GoalData({
    required this.avatar,
    required this.name,
    required this.clubLogo,
    required this.play,
    required this.goals,
  });

  static GoalData fromJson(Map<String, dynamic> json) {
    return GoalData(
      avatar: json["avatar"].toString(),
      name: json["name"].toString(),
      clubLogo: json["club_logo"].toString(),
      play: json["play"].toString(),
      goals: json["goals"].toString(),
    );
  }

  static List<GoalData> fromJsonList(List list) {
    if (list.isEmpty) return List.empty();
    return list.map((item) => GoalData.fromJson(item)).toList();
  }
}

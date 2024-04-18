class AssistData {
  String avatar;
  String name;
  String clubLogo;
  String play;
  String total;

  AssistData({
    required this.avatar,
    required this.name,
    required this.clubLogo,
    required this.play,
    required this.total,
  });

  static AssistData fromJson(Map<String, dynamic> json) {
    return AssistData(
      avatar: json["avatar"].toString(),
      name: json["name"].toString(),
      clubLogo: json["club_logo"].toString(),
      play: json["play"].toString(),
      total: json["total"].toString(),
    );
  }

  static List<AssistData> fromJsonList(List list) {
    if (list.isEmpty) return List.empty();
    return list.map((item) => AssistData.fromJson(item)).toList();
  }
}

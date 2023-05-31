class StatsData {
  final String name;
  final String club;
  final int point;
  String? photo;
  final String clubLogo;

  StatsData({
    required this.name,
    required this.club,
    required this.point,
    this.photo,
    required this.clubLogo,
  });

  static StatsData fromJson(Map<String, dynamic> json) {
    return StatsData(
      name: json["name"],
      club: json["club"],
      point: json["point"],
      photo: json["photo"],
      clubLogo: json["club_logo"],
    );
  }
}

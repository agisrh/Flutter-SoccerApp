class HightlightData {
  final String date;
  final String teamA;
  final String teamB;
  final String thumbnail;

  HightlightData({
    required this.date,
    required this.teamA,
    required this.teamB,
    required this.thumbnail,
  });

  static HightlightData fromJson(Map<String, dynamic> json) {
    return HightlightData(
      date: json["date"],
      teamA: json["team_a"],
      teamB: json["team_b"],
      thumbnail: json["thumbnail"],
    );
  }
}

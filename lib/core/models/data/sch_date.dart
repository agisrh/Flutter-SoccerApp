class SchData {
  String date;
  String time;
  String homeClub;
  String homeClubLogo;
  String awayClub;
  String awayClubLogo;
  String venue;

  SchData({
    required this.date,
    required this.time,
    required this.homeClub,
    required this.homeClubLogo,
    required this.awayClub,
    required this.awayClubLogo,
    required this.venue,
  });

  static SchData fromJson(Map<String, dynamic> json) {
    return SchData(
      date: json["date"].toString(),
      time: json["time"].toString(),
      homeClub: json["home_club"].toString(),
      homeClubLogo: json["home_club_logo"].toString(),
      awayClub: json["away_club"].toString(),
      awayClubLogo: json["away_club_logo"].toString(),
      venue: json["venue"].toString(),
    );
  }

  static List<SchData> fromJsonList(List list) {
    if (list.isEmpty) return List.empty();
    return list.map((item) => SchData.fromJson(item)).toList();
  }
}

class GameData {
  final String date;
  final String kickOff;
  final String teamA;
  final String teamB;
  final String logoA;
  final String logoB;
  final String homeBase;
  final String liveOn;

  GameData({
    required this.date,
    required this.kickOff,
    required this.teamA,
    required this.teamB,
    required this.logoA,
    required this.logoB,
    required this.homeBase,
    required this.liveOn,
  });

  static GameData fromJson(Map<String, dynamic> json) {
    return GameData(
      date: json["date"],
      kickOff: json["kick_off"],
      teamA: json["team_a"],
      teamB: json["team_b"],
      logoA: json["logo_a"],
      logoB: json["logo_b"],
      homeBase: json["home_base"],
      liveOn: json["live_on"],
    );
  }
}

class PointData {
  final String club;
  final String clubLogo;
  final int point;
  final int match;
  final int win;
  final int draw;
  final int lose;
  final int scoreGoal;
  final int concededGoal;

  PointData({
    required this.club,
    required this.point,
    required this.clubLogo,
    required this.match,
    required this.win,
    required this.draw,
    required this.lose,
    required this.scoreGoal,
    required this.concededGoal,
  });

  static PointData fromJson(Map<String, dynamic> json) {
    return PointData(
      club: json["club"],
      point: json["point"],
      clubLogo: json["club_logo"],
      match: json["match"],
      win: json["win"],
      draw: json["draw"],
      lose: json["lose"],
      scoreGoal: json["score_goal"],
      concededGoal: json["conceded_goal"],
    );
  }
}

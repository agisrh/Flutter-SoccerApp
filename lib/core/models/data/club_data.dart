class ClubData {
  final String name;
  final String logo;

  ClubData({
    required this.name,
    required this.logo,
  });

  static ClubData fromJson(Map<String, dynamic> json) {
    return ClubData(
      name: json["name"],
      logo: json["logo"],
    );
  }
}

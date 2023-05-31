class ServiceData {
  final String name;
  final String icon;
  final String link;

  ServiceData({
    required this.name,
    required this.icon,
    required this.link,
  });

  static ServiceData fromJson(Map<String, dynamic> json) {
    return ServiceData(
      name: json["name"],
      icon: json["icon"],
      link: json["link"],
    );
  }
}

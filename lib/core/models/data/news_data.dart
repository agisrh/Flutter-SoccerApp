class NewsData {
  final String title;
  final String thumbnail;
  final String url;

  NewsData({
    required this.title,
    required this.thumbnail,
    required this.url,
  });

  static NewsData fromJson(Map<String, dynamic> json) {
    return NewsData(
      title: json["title"],
      thumbnail: json["thumbnail"],
      url: json["url"],
    );
  }
}

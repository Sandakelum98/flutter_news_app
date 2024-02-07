import 'source_model.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] as String? ?? "", // Using null-coalescing operator
      title: json['title'] as String? ?? "", // Using null-coalescing operator
      description: json['description'] as String? ?? "", // Using null-coalescing operator
      url: json['url'] as String? ?? "", // Using null-coalescing operator
      urlToImage: json['urlToImage'] as String? ?? "", // Using null-coalescing operator
      publishedAt: json['publishedAt'] as String? ?? "", // Using null-coalescing operator
      content: json['content'] as String? ?? "", // Using null-coalescing operator
    );
  }
}

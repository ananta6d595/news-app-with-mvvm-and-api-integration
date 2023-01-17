class NewsArticle {
  final String title;
  final String? author;     // nullable type
  final String description;
  final String url;
  final String? urlToImage;  // nullable type
  final String publishedAt;
  final String? content;    // nulable type

  NewsArticle({
    required this.title,
    required this.author,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] != Null ? json['title'] : "No title",
      author: json['author'] != Null ? json['author'] : "NO",
      description: json['description'] ?? "No Description",
      url: json['url'] != Null ? json['url'] : "NO",
      urlToImage: json['urlToImage'] != Null ? json['urlToImage'] : "NO",
      publishedAt: json['publishedAt'] != Null ? json['publishedAt'] : "NO",
      content: json['conetnt'] != Null ? json['conetnt'] : "NO",
    );
  }
}


/*
You are using Dart with Null Safety (2.12.0)... With Null Safety on, the default types (String, int, bool, double, etc) do not accept null as value to a variable, you should re-evaluate your code or use Nullable types by appending a ? to the type like:

String? myNullableString;
If you really can't avoid using null

Read more about Dart Null Safety on: https://dart.dev/null-safety or in the Dart blog post announcing Null Safety

If you're sure that, in any place of your code, you DO NOT are assigning a null to a String, then you should see what dependency is causing the issue as, by a briefly search on pub.dev, all these packages are already migrated to Null Safety and report to the package developer...
*/


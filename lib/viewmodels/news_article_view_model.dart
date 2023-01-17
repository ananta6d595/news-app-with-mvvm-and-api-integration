import '../models/news_article.dart';

class NewsArticleViewModel {
  late final NewsArticle _newsArticle;

  NewsArticleViewModel({required NewsArticle article}) {
    _newsArticle = article;
  }

  String get title {
    return _newsArticle.title;
  }

  String get desription {
    return _newsArticle.description;
  }

  dynamic get imageUrl {
    return _newsArticle.urlToImage;
  }

  String get url {
    return _newsArticle.url;
  }

  String? get author {
    return _newsArticle.author;
  }

  String get publishedAt {
    return _newsArticle.publishedAt;
  }

  String? get content {
    return _newsArticle.content;
  }
}

class News {
  String author;
  String title;
  String description;
  String url;
  String imageUrl;
  String publishedAt;
  String content;
  String sourceName;

  News({
    this.author,
    this.title,
    this.description,
    this.url,
    this.imageUrl,
    this.publishedAt,
    this.content,
    this.sourceName,
  });

  factory News.fromMap(Map<String, dynamic> map) {
    return News(
      author: map['author'],
      title: map['title'],
      description: map['description'],
      url: map['url'],
      imageUrl: map['urlToImage'],
      publishedAt: map['publishedAt'],
      content: map['content'],
      sourceName: map['source']['name'],
    );
  }
}

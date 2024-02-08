import 'package:flutter_news_app/model/article_model.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:
                    article.urlToImage != null && article.urlToImage.isNotEmpty
                        ? DecorationImage(
                            image: NetworkImage(article.urlToImage),
                            fit: BoxFit.cover,
                          )
                        : DecorationImage(
                            image: AssetImage(
                                'assets/no-image.png'),
                            fit: BoxFit.cover,
                          ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Color(0xFF30A2FF),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                article.source.name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              article.description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    article.author ?? '',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    "|",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    article.publishedAt,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

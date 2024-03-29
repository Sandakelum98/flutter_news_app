import 'package:flutter_news_app/model/article_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/pages/articles_details_page.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(
                    article: article,
                  )));
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: article.urlToImage != null && article.urlToImage.isNotEmpty
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
            article.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(
              article.publishedAt,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

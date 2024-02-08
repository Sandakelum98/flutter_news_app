import 'package:flutter_news_app/model/article_model.dart';
import 'package:flutter/material.dart';

Widget customListTile(Article article, BuildContext context) {
  return Container(
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
            //let's add the height

            image: DecorationImage(
                image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12.0),
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
  );
}

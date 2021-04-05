import 'dart:convert';

import 'package:newsapp/models/article_model.dart';
import 'package:http/http.dart' as http;
class News{

    List<ArticleModel> news = [];
    String url = "https://newsapi.org/v2/top-headlines?country=in&apiKey=24b44aa3bb184578a7af9aabb610cc61";

    Future<void> getNews() async{


        var response = await http.get(url);
        var jsonData = jsonDecode(response.body);
        if(jsonData['status'] == "ok"){
            jsonData["articles"].forEach((element){

                if(element["urlToImage"] != null && element['description'] != null){

                    ArticleModel articleModel = ArticleModel(
                        title: element['title'],
                        author: element["author"],
                        description: element["description"],
                        url: element["url"],
                        urlToImage: element["urlToImage"],
                        content: element["context"]
                    );
                    news.add(articleModel);
                }
            });
        }
    }
}

class CatgoryNewsClass{

    List<ArticleModel> news = [];

    Future<void> getNews( String category) async{

        String url = "http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=24b44aa3bb184578a7af9aabb610cc61";
        var response = await http.get(url);
        var jsonData = jsonDecode(response.body);
        if(jsonData['status'] == "ok"){
            jsonData["articles"].forEach((element){

                if(element["urlToImage"] != null && element['description'] != null){

                    ArticleModel articleModel = ArticleModel(
                        title: element['title'],
                        author: element["author"],
                        description: element["description"],
                        url: element["url"],
                        urlToImage: element["urlToImage"],
                        content: element["context"]
                    );
                    news.add(articleModel);
                }
            });
        }
    }
}
import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/articale_model.dart';

class GetNews {
  final dio = Dio();

  void getHttp() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=301048b330f04c1caa56c44578b22af2&category=general');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> article=jsonData["articles"];
    List<ArticleModel> articles=[];
    for(var art in article){
    ArticleModel obj=  ArticleModel(title:art["title"]  ,image:art["url"], supTitle:art["description"] );
      articles.add(obj);
    }
    for (var art in articles){
      print(art.title);
    }

   // print(article);
  }
}

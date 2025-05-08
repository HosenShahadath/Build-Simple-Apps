import 'dart:convert';

import 'package:build_flutter_apps/News%20App/model/new_model.dart';
import 'package:http/http.dart' as http;

class NewsApi {
  List<NewsModel> dataStore = [];

  Future<void> getNews() async {
    Uri url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=c63ae7a671d846ae927cbec8715f3829");
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null &&
            element["description"] != null &&
            element["author"] != null &&
            element["content"] != null) {
          NewsModel newsModel = NewsModel(
              title: element['title'],
              urlToImage: element["urlToImage"],
              description: element["description"],
              author: element["author"],
              content: element["content"]);
          dataStore.add(newsModel);
        }
      });
    }
  }
}

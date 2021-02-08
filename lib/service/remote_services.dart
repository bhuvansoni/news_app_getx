import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app_getx/model/news.dart';

class RemoteServices {
  static Future<List<News>> getNews() async {
    final response = await http.get(
      'https://newsapi.org/v2/top-headlines?country=in&apiKey=21809d6126324d6880c87cc2cd223337',
    );

    print(response.body);

    if (response.statusCode == 200) {
      var decodedJson = json.decode(response.body);
      return decodedJson['articles'].map<News>(
        (value) {
          return News.fromMap(value);
        },
      ).toList();
    } else {
      //TOOD show error
    }
  }
}

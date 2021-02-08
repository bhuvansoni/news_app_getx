import 'package:get/get.dart';
import 'package:news_app_getx/model/news.dart';
import 'package:news_app_getx/service/remote_services.dart';

class NewsController extends GetxController {
  var news = List<News>().obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {
    List<News> result = await RemoteServices.getNews();
    news(result);
  }
}

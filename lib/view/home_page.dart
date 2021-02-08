import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_getx/controller/news_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NewsController());
    return Scaffold(
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.news.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(controller.news[index].imageUrl ?? ''),
              title: Text(controller.news[index].title),
            );
          },
        );
      }),
    );
  }
}

import 'package:build_flutter_apps/News%20App/model/new_model.dart';
import 'package:flutter/material.dart';

class NewsDetailScreen extends StatelessWidget {
  final NewsModel newsModel;
  const NewsDetailScreen({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 10,),
            Text(
              newsModel.title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                    child: Text(
                  "- ${newsModel.author!}",
                  maxLines: 1,
                ))
              ],
            ),
            const SizedBox(height: 10,),
            Image.network(newsModel.urlToImage!),
            const SizedBox(height: 10,),
            Text(
              newsModel.content!, style: TextStyle(
              fontSize: 18,
            ),
            ),
            const SizedBox(height: 10,),
            Text(
              newsModel.description!, style: TextStyle(
              fontSize: 18,
            ),
            )
          ],
        ),
      ),
    );
  }
}

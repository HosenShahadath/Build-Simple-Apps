import 'package:build_flutter_apps/News%20App/Services/services.dart';
import 'package:build_flutter_apps/News%20App/model/new_model.dart';
import 'package:build_flutter_apps/News%20App/screen/news_detail_screen.dart';
import 'package:flutter/material.dart';

class CategoryNewsScreen extends StatefulWidget {
  String category;
  CategoryNewsScreen({super.key, required this.category});

  @override
  State<CategoryNewsScreen> createState() => _CategoryNewsScreenState();
}

class _CategoryNewsScreenState extends State<CategoryNewsScreen> {
  List<NewsModel> articles = [];
  bool isLoading = true;

  getNews() async {
    CategoryNews categoryNews = CategoryNews();
    await categoryNews.getNews(widget.category);
    articles = categoryNews.dataStore;
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          widget.category,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: ListView.builder(
                  itemCount: articles.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final article = articles[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailScreen(newsModel: article)));
                      },
                      child: Container(
                        margin: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Image.network(
                              article.urlToImage!,
                              height: 250,
                              width: 400,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              article.title!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
    );
  }
}

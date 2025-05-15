import 'package:build_flutter_apps/Dictionary%20App/model.dart';
import 'package:build_flutter_apps/Dictionary%20App/services.dart';
import 'package:flutter/material.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  DictionaryModel? dictionaryModel;
  bool isLoading = false;
  String noDataFound = 'Now you can Search';

  searchContain(String word) async {
    setState(() {
      isLoading = true;
    });

    try {
      dictionaryModel = await ApiServices.fetchData(word);
      setState(() {});
    } catch (e) {
      dictionaryModel = null;
      noDataFound = 'Meaning not found';
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SearchBar(
              hintText: 'Search the word Here',
              onSubmitted: (value) {
                searchContain(value);
              },
            ),
            SizedBox(
              height: 10,
            ),
            if (isLoading)
              const LinearProgressIndicator()
            else if (dictionaryModel != null)
              Expanded(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    dictionaryModel!.word,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blue),
                  ),

                ],
              ))
          ],
        ),
      ),
    );
  }
}

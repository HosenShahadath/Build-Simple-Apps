import 'dart:convert';

import 'package:build_flutter_apps/Dictionary%20App/model.dart';
import 'package:http/http.dart' as http;

class ApiServices{
  static String baseUrl = 'https://api.dictionaryapi.dev/api/v2/entries/en/';

  static Future<DictionaryModel> fetchData(String word) async {
    Uri url = Uri.parse('$baseUrl$word');

    final response = await http.get(url);

    if(response.statusCode == 200){
      final data = json.decode(response.body);
      return DictionaryModel.fromJson(data[0]);
    } else {
      throw Exception('Failed to load Data');
    }
  }
}
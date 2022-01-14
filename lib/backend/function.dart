import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:technews_app/components/searchbar.dart';
import 'package:technews_app/utils/key.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=id&category=technology&apiKey=' +
            Key.key +
            '&q=' +
            SearchBar.searchController.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}

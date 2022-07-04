import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:theia/src/repository/byText/random_repository.dart';

import '../../models/unity_model.dart';

abstract class ByTextRepositoryHTTP implements ByTextRepository {
  @override
  Future<List<UnityModel>> findAllByText() async {
    final response =
        await http.get(Uri.parse('https://api.chucknorris.io/jokes/search?query={query}'));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UnityModel>((resp) => UnityModel.fromMap(resp))
        .toList();
  }
  

}

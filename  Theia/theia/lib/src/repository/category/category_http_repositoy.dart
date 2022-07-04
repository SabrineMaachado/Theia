import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:theia/src/models/unity_model.dart';
import 'package:theia/src/repository/category/category_repository.dart';

abstract class CategotyHTTPRepository implements CategoryRepository {
  @override
  Future<List<UnityModel>> CategoryUser() async {
    final response = await http.get(Uri.parse('https://api.chucknorris.io/jokes/categories'));
    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);
    return responseMap.map<UnityModel>((resp) => UnityModel.fromMap(resp)).toList();
  }
}

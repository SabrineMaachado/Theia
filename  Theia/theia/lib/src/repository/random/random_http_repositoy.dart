import 'dart:convert';
import 'dart:html';
import 'package:theia/src/models/unity_model.dart';
import 'package:http/http.dart' as http;
import 'package:theia/src/repository/random/random_repository.dart';

abstract class RandomRepositoryHTTP implements RandomRepository {
  @override
  Future<List<UnityModel>> findAllRandom() async {
    final response =
        await http.get(Uri.parse('https://api.chucknorris.io/jokes/random'));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UnityModel>((resp) => UnityModel.fromMap(resp))
        .toList();
  }
}

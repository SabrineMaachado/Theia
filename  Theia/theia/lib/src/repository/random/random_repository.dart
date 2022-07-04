import 'package:theia/src/models/unity_model.dart';

abstract class RandomRepository {
  Future<List<UnityModel>> RandomUser();

  findAllRandom() {}
}


import 'package:theia/src/models/unity_model.dart';

abstract class ByTextRepository {
  Future<List<UnityModel>> ByTextUser();

  findAllRandom() {}

  findAllByText() {}
}

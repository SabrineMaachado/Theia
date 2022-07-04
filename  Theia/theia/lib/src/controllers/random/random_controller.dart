
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:get/get.dart';
import 'package:theia/src/repository/random/random_repository.dart';


class RandomHTTPController extends GetxController {
  final RandomRepository _repositoryRandom;

  RandomHTTPController(this._repositoryRandom);

  @override
  void onInit() {
    super.onInit();
    findRandom();
  }

  Future<void> findRandom() async {
    change([], status: RxStatus.loading());
    try {
      final data = await _repositoryRandom.findAllRandom();
      change(data, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Opa! Algo deu errado aqui.'));
    }
  }
  
  void change(List list, {required RxStatus status}) {}

  obx(ListView Function(dynamic state) param0, {required SizedBox Function(dynamic error) onError}) {}
}


import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:get/get.dart';
import 'package:theia/src/repository/byText/random_repository.dart';


class ByTextHTTPController extends GetxController {
  final ByTextRepository _repositoryByText;

  ByTextHTTPController(this._repositoryByText);

  @override
  void onInit() {
    super.onInit();
    findByText();
  }

  Future<void> findByText() async {
    change([], status: RxStatus.loading());
    try {
      final data = await _repositoryByText.findAllByText();
      change(data, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Opa! Algo deu errado aqui.'));
    }
  }
  
  void change(List list, {required RxStatus status}) {}

  obx(ListView Function(dynamic state) param0, {required SizedBox Function(dynamic error) onError}) {}
}

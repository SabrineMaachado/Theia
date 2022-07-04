
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:get/get.dart';
import 'package:theia/src/repository/category/category_repository.dart';


class CategoryHTTPController extends GetxController {
  final CategoryRepository _repositoryCategory;

  CategoryHTTPController(this._repositoryCategory);

  @override
  void onInit() {
    super.onInit();
    findCategory();
  }

  Future<void> findCategory() async {
    change([], status: RxStatus.loading());
    try {
      final data = await _repositoryCategory.findAllCategory();
      change(data, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Opa! Algo deu errado aqui.'));
    }
  }
  
  void change(List list, {required RxStatus status}) {}

  obx(ListView Function(dynamic state) param0, {required SizedBox Function(dynamic error) onError}) {}
}

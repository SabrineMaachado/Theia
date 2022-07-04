import 'package:get/get.dart';
import 'package:theia/src/controllers/category/category_controller.dart';
import 'package:theia/src/repository/category/category_repository.dart';

class HttpCategoryBindings implements Bindings {
  @override
  void dependencies() {
     Get.put<CategoryRepository>(CategorytHTTPController());
    Get.put(CategoryHTTPController(Get.find()));
  }
}

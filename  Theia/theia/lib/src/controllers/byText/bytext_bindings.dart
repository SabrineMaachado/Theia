import 'package:get/get.dart';
import 'package:theia/src/controllers/byText/bytext_controller.dart';
import 'package:theia/src/controllers/category/category_controller.dart';
import 'package:theia/src/repository/byText/random_repository.dart';

class HttpByTextBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ByTextRepository>(ByTextHTTPController());
    
    Get.put(ByTextHTTPController(Get.find()));
  }
}

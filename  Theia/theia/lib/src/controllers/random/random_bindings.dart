import 'package:get/get.dart';
import 'package:theia/src/controllers/random/random_controller.dart';
import 'package:theia/src/repository/random/random_repository.dart';


class HttpRandomBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<RandomRepository>(RandomHTTPController());
    Get.put(RandomHTTPController(Get.find()));
  }
}

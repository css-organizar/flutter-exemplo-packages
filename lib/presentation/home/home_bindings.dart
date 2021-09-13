import 'package:exemplo_packages/presentation/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(),
      permanent: false,
    );
  }
}

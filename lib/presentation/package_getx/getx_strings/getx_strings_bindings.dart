import 'package:exemplo_packages/presentation/package_getx/getx_strings/getx_strings_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class GetxStringsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetxStringsController>(
      () => GetxStringsController(),
      fenix: false,
    );
  }
}

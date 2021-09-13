import 'package:exemplo_packages/presentation/package_getx/getx_personal_class/getx_personal_class_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class GetxPersonalClassBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetxPersonalClassController>(
      () => GetxPersonalClassController(),
      fenix: false,
    );
  }
}

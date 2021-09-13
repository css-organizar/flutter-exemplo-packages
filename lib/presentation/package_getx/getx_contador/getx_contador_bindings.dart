import 'package:exemplo_packages/presentation/package_getx/getx_contador/getx_contador_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class GetxContadorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetxContadorController>(
      () => GetxContadorController(),
      fenix: false,
    );
  }
}

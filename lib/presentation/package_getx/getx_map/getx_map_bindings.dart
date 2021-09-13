import 'package:exemplo_packages/presentation/package_getx/getx_map/getx_map_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class GetxMapBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetxMapController>(
      () => GetxMapController(),
      fenix: false,
    );
  }
}

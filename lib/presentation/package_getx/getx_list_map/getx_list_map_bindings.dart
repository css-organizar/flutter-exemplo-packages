import 'package:exemplo_packages/presentation/package_getx/getx_list_map/getx_list_map_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class GetxListMapBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetxListMapController>(
      () => GetxListMapController(),
      fenix: false,
    );
  }
}

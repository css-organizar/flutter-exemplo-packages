import 'package:exemplo_packages/presentation/package_getx/getx_home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class GetxHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<GetxHomeController>(
      GetxHomeController(),
      permanent: false,
    );
  }
}

import 'package:exemplo_packages/presentation/package_getx/getx_show_hide_password/getx_show_hide_password_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'getx_show_hide_password_controller.dart';

class GetxShowHidePasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetxShowHidePasswordController>(
      () => GetxShowHidePasswordController(),
      fenix: false,
    );
  }
}

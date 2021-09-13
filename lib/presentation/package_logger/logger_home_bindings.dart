import 'package:exemplo_packages/presentation/package_logger/logger_home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class LoggerHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<LoggerHomeController>(
      LoggerHomeController(),
      permanent: false,
    );
  }
}

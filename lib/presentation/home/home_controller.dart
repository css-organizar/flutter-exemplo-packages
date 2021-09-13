import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  @override
  onInit() async {
    print("HomeController onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("HomeController onClose");
    super.onClose();
  }
}

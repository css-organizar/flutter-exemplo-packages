import 'package:get/state_manager.dart';

class GetxShowHidePasswordController extends GetxController {
  final RxBool _status = false.obs;

  get status {
    return _status.value;
  }

  set status(value) {
    _status.value = value;
  }

  void setStatus() {
    status = !status;
  }

  @override
  onInit() async {
    print("GetxShowHidePasswordController onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("GetxShowHidePasswordController onClose");
    super.onClose();
  }
}

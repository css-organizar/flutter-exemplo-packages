import 'package:get/state_manager.dart';

class GetxContadorController extends GetxController {
  RxInt _contador = 0.obs;

  get contador {
    return _contador;
  }

  set contador(value) {
    _contador = value;
  }

  void incContador() {
    contador++;
  }

  @override
  onInit() async {
    print("GetxContadorController onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("GetxContadorController onClose");
    super.onClose();
  }
}

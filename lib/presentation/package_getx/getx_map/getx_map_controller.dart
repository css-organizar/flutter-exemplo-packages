import 'package:get/state_manager.dart';

class GetxMapController extends GetxController {
  final _pessoa = {
    "nome": "",
    "idade": "0",
  }.obs;

  get pessoa {
    return _pessoa;
  }

  set pessoa(value) {
    _pessoa.value = value;
  }

  @override
  onInit() async {
    print("GetxMapController onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("GetxMapController onClose");
    super.onClose();
  }
}

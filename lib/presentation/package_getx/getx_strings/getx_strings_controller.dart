import 'package:get/state_manager.dart';

class GetxStringsController extends GetxController {
  final RxString _nome = "".obs;

  get nome {
    return _nome.value == "" ? "Não informado" : _nome.value;
  }

  set nome(value) {
    _nome.value = value;
  }

  void setNome(String value) {
    nome = value;
  }

  void clearNome() {
    nome = "";
  }

  @override
  onInit() async {
    print("GetxStringsController onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("GetxStringsController onClose");
    super.onClose();
  }
}

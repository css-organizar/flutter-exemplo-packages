import 'package:exemplo_packages/domain/entities/pessoa_entity.dart';
import 'package:get/state_manager.dart';

class GetxPersonalClassController extends GetxController {
  Rx<PessoaEntity> pessoa = PessoaEntity().obs;
  @override
  onInit() async {
    print("GetxPersonalClassController onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("GetxPersonalClassController onClose");
    super.onClose();
  }
}

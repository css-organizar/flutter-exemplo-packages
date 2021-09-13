import 'package:get/state_manager.dart';

class GetxListMapController extends GetxController {
  final _selectedItem = 0.obs;
  final teste = 0.obs;
  final _listaPessoa = <Map<String, dynamic>>[].obs;

  get selectedItem => _selectedItem;
  set selectedItem(value) => _selectedItem.value = value;

  void setItem(int value) {
    selectedItem = (selectedItem != value) ? value : 0;
  }

  List get listaPessoa {
    return _listaPessoa;
  }

  void addlistaPessoa(item) {
    print("add: $item");
    _listaPessoa.add(item);
  }

  @override
  onInit() async {
    print("GetxListMapController onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("GetxListMapController onClose");
    super.onClose();
  }
}

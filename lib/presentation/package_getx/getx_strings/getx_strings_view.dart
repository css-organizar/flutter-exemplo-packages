import 'package:exemplo_packages/presentation/package_getx/getx_strings/getx_strings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxStringsView extends StatefulWidget {
  final Map<String, dynamic> title;

  const GetxStringsView({Key? key, required this.title}) : super(key: key);

  @override
  _GetxStringsViewState createState() => _GetxStringsViewState();
}

class _GetxStringsViewState extends State<GetxStringsView> with RouteAware {
  final GetxStringsController controller = Get.find<GetxStringsController>();
  TextEditingController nomeController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    Get.find<RouteObserver>().unsubscribe(this);
    super.dispose();
  }

  @override
  void reassemble() {
    print("${DateTime.now().toIso8601String()} : (StatefullWidget) -> reassemble");
    super.reassemble();
  }

  @override
  void deactivate() {
    print("${DateTime.now().toIso8601String()} : (StatefullWidget) -> deactivate");
    super.deactivate();
  }

  @override
  void didChangeDependencies() {
    print("${DateTime.now().toIso8601String()} : (StatefullWidget) -> didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didPopNext() {
    print("${DateTime.now().toIso8601String()} : (RouteAware) -> didPopNext");
  }

  @override
  void didPush() {
    print("${DateTime.now().toIso8601String()} : (RouteAware) -> didPush");
  }

  @override
  void didPop() {
    print("${DateTime.now().toIso8601String()} : (RouteAware) -> didPop");
  }

  @override
  void didPushNext() {
    print("${DateTime.now().toIso8601String()} : (RouteAware) -> didPushNext");
  }

  @override
  Widget build(BuildContext context) {
    Get.find<RouteObserver>().subscribe(this, ModalRoute.of(context) as PageRoute);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Exemplo GetX: String"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  autofocus: true,
                  controller: nomeController,
                  decoration: InputDecoration(
                    labelText: "Descrição",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          primary: Colors.blue[400],
                        ),
                        onPressed: () {
                          controller.setNome(
                            nomeController.text,
                          );
                        },
                        child: Text(
                          "Executar",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Obx(() {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Resultado",
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(),
                      Text(
                        controller.nome,
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

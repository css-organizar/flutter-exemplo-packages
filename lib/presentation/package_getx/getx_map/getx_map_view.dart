import 'package:exemplo_packages/presentation/package_getx/getx_map/getx_map_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxMapView extends StatefulWidget {
  const GetxMapView({Key? key}) : super(key: key);

  @override
  _GetxMapViewState createState() => _GetxMapViewState();
}

class _GetxMapViewState extends State<GetxMapView> {
  final GetxMapController controller = GetxMapController();

  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(GetxMapView oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("GetX: Map<String,dynamic>"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  autofocus: true,
                  controller: nomeController,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  autofocus: true,
                  controller: idadeController,
                  decoration: InputDecoration(
                    labelText: "Idade",
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
                          controller.pessoa["nome"] = nomeController.text;
                          controller.pessoa["idade"] = idadeController.text;
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
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Divider(),
                      Text(
                        controller.pessoa.value.toString(),
                        style: TextStyle(
                          fontSize: 15,
                        ),
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

import 'package:exemplo_packages/presentation/package_getx/getx_personal_class/getx_personal_class_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxPersonalClassView extends StatefulWidget {
  const GetxPersonalClassView({Key? key}) : super(key: key);

  @override
  _GetxPersonalClassViewState createState() => _GetxPersonalClassViewState();
}

class _GetxPersonalClassViewState extends State<GetxPersonalClassView> {
  final GetxPersonalClassController controller = GetxPersonalClassController();

  TextEditingController nomeController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  // @override
  // void didUpdateWidget(GetxPersonalClassView oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("GetX: Personal Class"),
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
                          controller.pessoa.update(
                            (pessoa) {
                              pessoa?.nome = nomeController.text;
                            },
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
                  height: 10,
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
                        controller.pessoa.toJson().toString(),
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

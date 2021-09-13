import 'package:exemplo_packages/presentation/package_getx/getx_contador/getx_contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxContadorView extends StatefulWidget {
  final Map<String, dynamic> title;

  const GetxContadorView({Key? key, required this.title}) : super(key: key);

  @override
  _GetxContadorViewState createState() => _GetxContadorViewState();
}

class _GetxContadorViewState extends State<GetxContadorView> {
  final GetxContadorController controller = GetxContadorController();
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(GetxContadorView oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Exemplo Getx: Contador"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() {
                  return Container(
                    padding: EdgeInsets.all(15),
                    height: 150,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CircleAvatar(
                        child: Text(
                          controller.contador.toString(),
                          style: TextStyle(
                            fontSize: 55,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                            controller.incContador();
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

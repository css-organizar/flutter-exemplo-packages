import 'package:exemplo_packages/presentation/package_getx/getx_list_map/getx_list_map_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxListMapView extends StatefulWidget {
  const GetxListMapView({Key? key}) : super(key: key);

  @override
  _GetxListMapViewState createState() => _GetxListMapViewState();
}

class _GetxListMapViewState extends State<GetxListMapView> {
  final GetxListMapController controller = GetxListMapController();
  final TextEditingController nomeController = TextEditingController();
  FocusNode? nomeFocus;

  @override
  void initState() {
    nomeController.clear();
    nomeFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nomeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("GetX: List<Map<String,dynamic>>"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      focusNode: nomeFocus,
                      controller: nomeController,
                      decoration: InputDecoration(
                        labelText: "Descrição",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
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
                              controller.addlistaPessoa({
                                "nome": nomeController.text,
                              });
                              nomeController.clear();
                              FocusScope.of(context).requestFocus(nomeFocus);
                            },
                            child: Text(
                              "Incluir Ítem",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Obx(
                  () {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 30),
                      child: ListView.separated(
                        itemCount: controller.listaPessoa.length,
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 0,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Material(
                            color: controller.selectedItem.value == (index + 1)
                                ? Colors.blue[200]?.withAlpha(100)
                                : Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                controller.setItem((index + 1));
                              },
                              child: ListTile(
                                title: Text(controller.listaPessoa[index]["nome"] ?? ""),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

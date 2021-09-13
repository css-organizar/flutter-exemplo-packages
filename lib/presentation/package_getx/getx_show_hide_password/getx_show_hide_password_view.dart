import 'package:exemplo_packages/presentation/package_getx/getx_show_hide_password/getx_show_hide_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class GetxShowHidePasswordView extends StatefulWidget {
  const GetxShowHidePasswordView({Key? key}) : super(key: key);

  @override
  _GetxShowHidePasswordViewState createState() => _GetxShowHidePasswordViewState();
}

class _GetxShowHidePasswordViewState extends State<GetxShowHidePasswordView> {
  final GetxShowHidePasswordController controller = Get.find<GetxShowHidePasswordController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(GetxShowHidePasswordView oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("GetX: Show/Hide Password"),
        centerTitle: true,
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 2.2,
                  child: CircleAvatar(
                    child: Icon(
                      FontAwesomeIcons.userAlt,
                      size: 65,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  autofocus: true,
                  initialValue: "Nome do Usuário",
                  decoration: InputDecoration(
                    labelText: "Login",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Obx(() {
                  return TextFormField(
                    initialValue: "123456",
                    obscureText: !controller.status,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: IconButton(
                          icon: controller.status ? Icon(FontAwesomeIcons.eyeSlash) : Icon(FontAwesomeIcons.eye),
                          onPressed: () {
                            controller.setStatus();
                          },
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }),
                SizedBox(
                  height: 25,
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
                        onPressed: () {},
                        child: Text(
                          "Entrar",
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
        ),
      ),
    );
  }
}

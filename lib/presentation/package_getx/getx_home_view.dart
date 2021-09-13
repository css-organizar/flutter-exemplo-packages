import 'package:flutter/material.dart';
import 'package:exemplo_packages/application/application_pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class GetxHomeView extends StatefulWidget {
  const GetxHomeView({Key? key}) : super(key: key);

  @override
  _GetxHomeViewState createState() => _GetxHomeViewState();
}

class _GetxHomeViewState extends State<GetxHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("GetX"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.infoCircle),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Colors.blue[400],
                  ),
                  child: Text(
                    "Exemplo GetX: String",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      ApplicationRoutes.getxStrings,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Colors.blue[400],
                  ),
                  child: Text(
                    "Exemplo GetX: Contador",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      ApplicationRoutes.getxContador,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Colors.blue[400],
                  ),
                  child: Text(
                    "Exemplo GetX: Login Show/Hide Password",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      ApplicationRoutes.getxShowHidePassword,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Colors.blue[400],
                  ),
                  child: Text(
                    "Exemplo GetX: Map<String,dynamic>",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      ApplicationRoutes.getxMap,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Colors.blue[400],
                  ),
                  child: Text(
                    "Exemplo GetX: Personal Class",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      ApplicationRoutes.getxPersonalClass,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Colors.blue[400],
                  ),
                  child: Text(
                    "Exemplo GetX: List<Map<String,dynamic>>",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      ApplicationRoutes.getxListMap,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

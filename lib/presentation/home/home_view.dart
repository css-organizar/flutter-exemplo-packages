import 'package:flutter/material.dart';
import 'package:exemplo_packages/application/application_pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Testes de Packages"),
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
                    "Package: GetX",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      ApplicationRoutes.getxHome,
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
                    "Package: Logger",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      ApplicationRoutes.logger,
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

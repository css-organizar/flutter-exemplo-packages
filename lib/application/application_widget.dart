import 'package:exemplo_packages/application/application_bindings.dart';
import 'package:flutter/material.dart';
import 'package:exemplo_packages/application/application_pages.dart';
import 'package:get/get.dart';

class ApplicationWidget extends StatefulWidget {
  const ApplicationWidget({Key? key}) : super(key: key);

  @override
  _ApplicationWidgetState createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorObservers: [routeObserver],
      initialRoute: ApplicationPages.initialRoute,
      getPages: ApplicationPages.routes,
      initialBinding: ApplicationBinding(),
    );
  }
}

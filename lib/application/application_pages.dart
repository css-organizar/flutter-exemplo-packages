import 'package:exemplo_packages/presentation/home/home_bindings.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_contador/getx_contador_bindings.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_contador/getx_contador_view.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_home_bindings.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_list_map/getx_list_map_bindings.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_list_map/getx_list_map_view.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_map/getx_map_bindings.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_map/getx_map_view.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_personal_class/getx_personal_class_bindings.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_personal_class/getx_personal_class_view.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_show_hide_password/getx_show_hide_password_bindings.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_show_hide_password/getx_show_hide_password_view.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_strings/getx_strings_bindings.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_strings/getx_strings_view.dart';
import 'package:exemplo_packages/presentation/package_logger/logger_home_bindings.dart';
import 'package:exemplo_packages/presentation/package_getx/getx_home_view.dart';
import 'package:exemplo_packages/presentation/package_logger/logger_home_view.dart';
import 'package:get/get.dart';

import '../../presentation/home/home_view.dart';

part 'application_routes.dart';

class ApplicationPages {
  static const initialRoute = ApplicationRoutes.homeView;

  static final routes = [
    GetPage(
      name: ApplicationRoutes.homeView,
      page: () => HomeView(),
      bindings: [
        HomeBinding(),
      ],
      transition: Transition.noTransition,
    ),
    GetPage(
      name: ApplicationRoutes.getxHome,
      page: () => GetxHomeView(),
      bindings: [
        GetxHomeBinding(),
      ],
      transition: Transition.noTransition,
    ),
    GetPage(
      name: ApplicationRoutes.getxStrings,
      page: () => GetxStringsView(
        title: {"title": "Exemplo GetX: String"},
      ),
      bindings: [
        GetxStringsBinding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ApplicationRoutes.getxContador,
      page: () => GetxContadorView(
        title: {"title": "Exemplo GetX: Contador"},
      ),
      bindings: [
        GetxContadorBinding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ApplicationRoutes.getxShowHidePassword,
      page: () => GetxShowHidePasswordView(),
      bindings: [
        GetxShowHidePasswordBinding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ApplicationRoutes.getxMap,
      page: () => GetxMapView(),
      bindings: [
        GetxMapBinding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ApplicationRoutes.getxPersonalClass,
      page: () => GetxPersonalClassView(),
      bindings: [
        GetxPersonalClassBinding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ApplicationRoutes.getxListMap,
      page: () => GetxListMapView(),
      bindings: [
        GetxListMapBinding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ApplicationRoutes.logger,
      page: () => LoggerHomeView(
        title: {"title": "Logger"},
      ),
      bindings: [
        LoggerHomeBinding(),
      ],
      transition: Transition.fadeIn,
    ),
  ];
}

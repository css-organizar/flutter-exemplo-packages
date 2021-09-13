import 'package:exemplo_packages/presentation/package_logger/components/logger_button.dart';
import 'package:exemplo_packages/presentation/package_logger/logger_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoggerHomeView extends StatefulWidget {
  final Map<String, dynamic> title;

  const LoggerHomeView({Key? key, required this.title}) : super(key: key);

  @override
  _LoggerHomeViewState createState() => _LoggerHomeViewState();
}

class _LoggerHomeViewState extends State<LoggerHomeView> with RouteAware {
  LoggerHomeController controller = Get.find<LoggerHomeController>();

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
    super.reassemble();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Get.find<RouteObserver>().subscribe(this, ModalRoute.of(context) as PageRoute);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Logger"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LoggerButton(
                  label: "Verbose log",
                  primary: Colors.grey[600],
                  onPressed: () {
                    controller.loggerVerboseLog();
                  },
                ),
                LoggerButton(
                  label: "Debug log",
                  primary: Colors.blue[400],
                  onPressed: () {
                    controller.loggerDebugLog();
                  },
                ),
                LoggerButton(
                  label: "Info log",
                  primary: Colors.purple[100],
                  onPressed: () {
                    controller.loggerInfoLog();
                  },
                ),
                LoggerButton(
                  label: "Warning log",
                  primary: Colors.orange[900],
                  onPressed: () {
                    controller.loggerWarningLog();
                  },
                ),
                LoggerButton(
                  label: "Error log",
                  primary: Colors.red[900],
                  onPressed: () {
                    controller.loggerErrorLog();
                  },
                ),
                LoggerButton(
                  label: "What a terrible failure log",
                  primary: Colors.pink[600],
                  onPressed: () {
                    controller.loggerWtf();
                  },
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 2,
                ),
                LoggerButton(
                  label: "Level warning",
                  onPressed: () {
                    controller.loggerLevelWarning();
                  },
                ),
                LoggerButton(
                  label: "Options",
                  onPressed: () {
                    controller.loggerOptions();
                  },
                ),
                LoggerButton(
                  label: "PrettyPrinter",
                  onPressed: () {
                    controller.loggerPrettyPrinter();
                  },
                ),
                LoggerButton(
                  label: "Filter",
                  onPressed: () {
                    controller.loggerFilter();
                  },
                ),
                LoggerButton(
                  label: "Printer",
                  onPressed: () {
                    controller.loggerPrinter();
                  },
                ),
                LoggerButton(
                  label: "LogOutput",
                  onPressed: () {
                    Get.find<LoggerHomeController>().loggerLogOutout();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

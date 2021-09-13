import 'package:exemplo_packages/presentation/package_logger/components/logger_custom_filter.dart';
import 'package:exemplo_packages/presentation/package_logger/components/logger_custom_printer.dart';
import 'package:get/state_manager.dart';
import 'package:logger/logger.dart';

class LoggerHomeController extends GetxController {
  final _logger = Logger();

  void loggerVerboseLog() {
    _logger.v("Verbose log");
  }

  void loggerDebugLog() {
    _logger.d("Debug log");
  }

  void loggerInfoLog() {
    _logger.i("Info log");
  }

  void loggerWarningLog() {
    _logger.w("Warning log");
  }

  void loggerErrorLog() {
    _logger.e("Error log");
  }

  void loggerWtf() {
    _logger.wtf("What a terrible failure log");
  }

  void loggerLevelWarning() {
    var logger = Logger();
    logger.log(Level.error, "Level warning");
  }

  void loggerOptions() {
    var logger = Logger(
      filter: null,
      printer: PrettyPrinter(),
      output: null,
    );
    logger.log(Level.error, "Options");
  }

  void loggerPrettyPrinter() {
    var logger = Logger(
      filter: null,
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 2,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        printTime: true,
      ),
      output: null,
    );
    logger.log(Level.error, "PrettyPrinter");
  }

  void loggerFilter() {
    var logger = Logger(
      filter: LoggerCustomFilter(),
      printer: PrettyPrinter(),
      output: null,
    );
    logger.log(Level.debug, "Filter");
  }

  void loggerPrinter() {
    var logger = Logger(
      filter: null,
      printer: LoggerCustoPrinter(),
      output: null,
    );
    logger.log(Level.warning, "Printer");
  }

  void loggerLogOutout() {
    var logger = Logger(
      filter: null,
      printer: PrettyPrinter(),
      output: ConsoleOutput(),
    );
    logger.log(Level.debug, "LogOutput ");
  }

  @override
  onInit() async {
    print("LoggerHomeController onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("LoggerHomeController onClose");
    super.onClose();
  }
}

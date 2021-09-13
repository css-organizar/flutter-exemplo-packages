import 'package:logger/logger.dart';

class LoggerCustoPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    return [event.message];
  }
}

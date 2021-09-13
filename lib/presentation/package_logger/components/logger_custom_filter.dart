import 'package:logger/logger.dart';

class LoggerCustomFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    print(event.error);
    print(event.level);
    print(event.message);
    print(event.stackTrace);
    return true;
  }
}

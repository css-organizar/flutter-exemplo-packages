import 'package:logger/logger.dart';

class LoggerCustomConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    for (var line in event.lines) {
      print("LogOutput: $line");
    }
  }
}

import 'package:exemplo_packages/presentation/package_logger/logger_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoggerButton extends StatelessWidget {
  final String label;
  final Color? primary;
  final Color? textColor;
  final Function() onPressed;

  const LoggerButton({
    Key? key,
    required this.label,
    this.primary = const Color(0xFF42A5F5),
    this.textColor = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            primary: primary,
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

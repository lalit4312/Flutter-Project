import 'package:flutter/material.dart';

showMySnackBar({
  required String message,
  required BuildContext context,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: color ?? Colors.green,
    duration: Duration(seconds: 1),
    behavior: SnackBarBehavior.floating,
  ));
}

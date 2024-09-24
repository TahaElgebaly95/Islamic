import 'package:flutter/material.dart';

class Navigation {
  static void push(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  static void pushAndReplace(BuildContext context, Widget screen) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
      (route) => false,
    );
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}

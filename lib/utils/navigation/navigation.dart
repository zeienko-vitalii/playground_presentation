import 'package:flutter/material.dart';

const String ROOT_SCREEN = "/";
const String MAIN_SCREEN = "/MainScreen";
const String PRESENTATION_SCREEN = "/MainScreen";

class NavigatorHelper {
  static void navigateToMainScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, MAIN_SCREEN, (Route<dynamic> route) => false);
  }
  static void navigateToPresentation(BuildContext context) {
    Navigator.pushNamed(context, PRESENTATION_SCREEN);
  }
}

import 'dart:async';

import 'package:rxdart/rxdart.dart';

class ActiveScreenManager {
  static final ActiveScreenManager _singleton = ActiveScreenManager._internal();

  static BehaviorSubject<String> _activeScreenController;
  static const String DEFAULT_SCREEN = "_DEFAULT";
  String activeScreen;

  Stream<String> get activeScreenStream => _activeScreenController?.stream;

  void dispose() {
    _activeScreenController?.close();
  }

  void setActiveScreen(String screen) {
    activeScreen = screen;
    _activeScreenController?.add(screen);
  }

  factory ActiveScreenManager() {
    if (_activeScreenController == null) {
      _activeScreenController = BehaviorSubject<String>();
    }
    return _singleton;
  }

  ActiveScreenManager._internal();
}

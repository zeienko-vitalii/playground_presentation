import 'dart:async';

import 'active_screen_manager.dart';

abstract class BlocBase {
  final ActiveScreenManager _activeScreenManager = ActiveScreenManager();
  StreamSubscription<bool> onNeedUpdateDataSubscription;
  Stream<String> get activeScreenStream =>
      _activeScreenManager?.activeScreenStream;
  get activeScreen => _activeScreenManager.activeScreen;

  void blocInit() {}

  void dispose() {
    onNeedUpdateDataSubscription?.cancel();
  }
}

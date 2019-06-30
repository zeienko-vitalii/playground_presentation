import 'package:flutter/material.dart';

class InheritedPresentationWidget extends InheritedWidget {
  final Widget child;
  int page;
  InheritedPresentationWidget({@required this.child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedPresentationWidget oldWidget) {
    return page != oldWidget.page;
  }

  static InheritedPresentationWidget of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(InheritedPresentationWidget);
}

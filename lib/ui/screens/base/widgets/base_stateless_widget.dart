import 'package:flutter/material.dart';

import '../bloc_base.dart';
import '../bloc_provider.dart';
import 'base_stateless_resizable.dart';

abstract class BaseStatelessWidget<B extends BlocBase>
    extends BaseStatelessResizableWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      bloc: getScreenBloc(),
      child: Container(
        child: Stack(
          children: <Widget>[
            Opacity(
                opacity: getOpacity(),
                child: Container(color: getBackground())),
            SafeArea(
                child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: getWidget(context))),
          ],
        ),
      ),
    );
  }

  double getOpacity() => 1.0;

  Color getBackground() => Colors.white;

  B getScreenBloc();

  Widget getWidget(BuildContext context);
}

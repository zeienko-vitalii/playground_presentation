import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'active_screen_manager.dart';
import 'bloc_base.dart';
import 'bloc_provider.dart';

abstract class BaseState<B extends BlocBase, T extends StatefulWidget> extends State<T> with RouteAware {
  var screenUtil = ScreenUtil.getInstance();
  final String currentScreen;
  StreamSubscription _subscription;
  B bloc;
  BaseState({this.currentScreen = ActiveScreenManager.DEFAULT_SCREEN});

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<B>(context);
    bloc.blocInit();
    WidgetsBinding.instance.addPostFrameCallback((_) => {});
  }

  @override
  void dispose() {
    _subscription.cancel();
    // HomeWidget.routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // HomeWidget.routeObserver.subscribe(this, ModalRoute.of(context));
    super.didChangeDependencies();
  }

  @override
  void didPopNext() {
    // Covering route was popped off the navigator.
    // bloc.setActiveScreenAfterLoginSession(currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return getWidget(context);
  }

  Widget getWidget(BuildContext context);
}

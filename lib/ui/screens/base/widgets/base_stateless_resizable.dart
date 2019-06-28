import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class BaseStatelessResizableWidget extends StatelessWidget {
  final screenUtil = ScreenUtil.getInstance();

  @override
  Widget build(BuildContext context) {
   return getWidget(context);
  }

  Widget getWidget(BuildContext context);
}
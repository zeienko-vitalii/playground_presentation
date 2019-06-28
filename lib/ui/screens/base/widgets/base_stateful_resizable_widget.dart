import 'package:flutter/material.dart';

abstract class BaseStatefulResizableWidget<T extends StatefulWidget> extends StatefulWidget {

  @override
  State<T> createState() => getState();

  State<T> getState();
}

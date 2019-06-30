import 'package:flutter/material.dart';

class SecondWidget extends StatefulWidget {
  SecondWidget({Key key}) : super(key: key);

  _SecondWidgetState createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

import 'package:flutter/material.dart';

class FirstWidget extends StatefulWidget {
  FirstWidget({Key key}) : super(key: key);

  _FirstWidgetState createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange
    );
  }
}
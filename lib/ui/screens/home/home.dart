import 'package:flutter/material.dart';
import 'package:playground_presentation/ui/screens/base/widgets/base_state_without_bloc.dart';
import 'package:playground_presentation/ui/screens/presentation/widget/flow_widgets/presentation_inherited_widget.dart';
import 'package:playground_presentation/utils/navigation/navigation.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends BaseStateWithoutBloc<MyHomePage> {
  @override
  Widget getWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InheritedPresentationWidget(
        child: _bodyWidget(context),
      ),
    );
  }

  _bodyWidget(BuildContext context) => Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: _buttonWidget("START", () {
                  NavigatorHelper.navigateToPresentation(context);
                }),
              ),
            ],
          ),
        ),
      );

  _buttonWidget(String text, VoidCallback callback) {
    return Container(
      // padding: EdgeInsets.all(250),
      // width: 150,
      child: RaisedButton(
        onPressed: callback,
        color: Colors.blueAccent,
        shape: RoundedRectangleBorder(),
        textTheme: ButtonTextTheme.primary,
        child: Text(text ?? ''),
      ),
    );
  }
}

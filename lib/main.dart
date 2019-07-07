import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playground_presentation/ui/screens/home/home.dart';
import 'package:playground_presentation/ui/screens/presentation_screen.dart';
import 'package:playground_presentation/utils/navigation/custom_route.dart';
import 'package:playground_presentation/utils/navigation/navigation.dart';

void main() => runApp(MyExampleApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        PRESENTATION_SCREEN: (context) => PresentationScreen(),
      },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case ROOT_SCREEN:
            return TransparentRoute(builder: (BuildContext context) {
              return MyHomePage(title: 'Flutter Demo Home Page');
            });
        }
      },
    );
  }
}

class MyExampleApp extends StatelessWidget {
  final String text = "Flutter is awesome";

  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: ,
//    );
//    return Align(child: _constrainedBox());
    return _fittedBox();
  }

  /// A widget that imposes additional constraints on its child.
  ///// For example, if you wanted [child] to have a minimum height of 50.0 logical
  ///// pixels, you could use `const BoxConstraints(minHeight: 50.0)` as the
  ///// [constraints].
  Widget _constrainedBox() =>
      ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 20, height: 20),
        child: _fittedBox(),
      );

  /// This allows a child to render at the size it would render if it were alone
  /// on an infinite canvas with no constraints. This container will then attempt
  /// to adopt the same size, within the limits of its own constraints. If it ends
  /// up with a different size, it will align the child based on [alignment].
  /// If the box cannot expand enough to accommodate the entire child, the
  /// child will be clipped.
  Widget _unconstrainedBox() =>
      UnconstrainedBox(
        child: Container(
          color: Colors.green,
        ),
      );

  /// Creates a fixed size box. The [width] and [height] parameters can be null
  /// to indicate that the size of the box should not be constrained in
  /// the corresponding dimension.
  Widget _sizedBox() => SizedBox();

  Widget _fittedBox({Widget child}) =>
      FittedBox(
//    fit: BoxFit.fill,
        child: _fittedBox(),
      );

  Widget _limitedBox() => LimitedBox();

  Widget _container() =>
      Container(
        color: Colors.green,
        width: 20,
        height: 20,
      );

  Widget _decoratedBox() => DecoratedBox(decoration: BoxDecoration(color: Colors.red));
}

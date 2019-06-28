import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playground_presentation/ui/screens/home/home.dart';
import 'package:playground_presentation/ui/screens/presentation_screen.dart';
import 'package:playground_presentation/utils/navigation/navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
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
        // switch (settings.name) {
        //   case ROOT_SCREEN:
        //     return TransparentRoute(builder: (BuildContext context) {
        //       return RootScreen();
        //     });
        //   case MAIN_SCREEN:
        //     return TransparentRoute(builder: (BuildContext context) {
        //       return MainScreen();
        //     });
        // }
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

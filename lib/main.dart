import 'package:flutter/material.dart';

import 'orientation_helpers.dart';
import 'routes.dart';
import 'home_screen.dart';
import 'portrait_screen.dart';
import 'landscape_screen.dart';
import 'rotating_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _observer = NavigatorObserverWithOrientation();

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppRoutes.home) {
      return MaterialPageRoute(builder: (context) => HomeScreen());
    } else if (settings.name == AppRoutes.portrait) {
      return MaterialPageRoute(
        builder: (context) => PortraitScreen(),
        settings: rotationSettings(settings, ScreenOrientation.portraitOnly),
      );
    } else if (settings.name == AppRoutes.landscape) {
      return MaterialPageRoute(
        builder: (context) => LandscapeScreen(),
        settings: rotationSettings(settings, ScreenOrientation.landscapeOnly),
      );
    } else if (settings.name == AppRoutes.rotating) {
      return MaterialPageRoute(
        builder: (context) => RotatingScreen(),
        settings: rotationSettings(settings, ScreenOrientation.rotating),
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Orientation Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      onGenerateRoute: _onGenerateRoute,
      navigatorObservers: [_observer],
    );
  }
}


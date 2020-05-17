import 'package:flutter/material.dart';
import 'routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Orientation Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Portrait-only screen"),
              onPressed: () => Navigator.pushNamed(context, AppRoutes.portrait),
            ),
            RaisedButton(
              child: Text("Landscape-only screen"),
              onPressed: () => Navigator.pushNamed(context, AppRoutes.landscape),
            ),
            RaisedButton(
              child: Text("Rotating screen"),
              onPressed: () => Navigator.pushNamed(context, AppRoutes.rotating),
            ),
          ],
        ),
      ),
    );
  }
}

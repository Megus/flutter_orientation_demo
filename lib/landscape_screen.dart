import 'package:flutter/material.dart';

class LandscapeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Landscape")),
      body: Center(child: Text("This is the landscape-only screen")),
    );
  }
}

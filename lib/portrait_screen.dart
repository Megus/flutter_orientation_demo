import 'package:flutter/material.dart';

class PortraitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Portrait")),
      body: Center(child: Text("This is the portrait-only screen")),
    );
  }
}

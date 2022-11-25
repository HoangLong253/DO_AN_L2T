import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Logo({super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 40),
        child: Image.asset(
          'assets/logo.png',
          height: height,
          width: width,
        ));
  }
}

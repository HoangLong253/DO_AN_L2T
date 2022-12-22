import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  HeaderText({Key? key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Text(
        text,
        style:
            TextStyle(fontSize: 40, color: Colors.red, fontFamily: 'Avenger'),
      ),
    );
  }
}

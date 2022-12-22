import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget{
  InfoBox({super.key, required this.text});

  final String text;
  double padding = 10;
  double padSize = 10;
  double height = 40;
  double width = 250;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(padSize),
      child: Container(
        color: Colors.red,
        child: SizedBox(
          height: height,
          width: width,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }

}
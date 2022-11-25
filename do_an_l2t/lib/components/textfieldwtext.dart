import 'package:flutter/material.dart';

class TextFieldWText extends StatefulWidget {
  TextFieldWText(
      {Key? key,
      required this.headtxt,
      required this.hinttxt,
      required this.bordercolor,
      required this.obscureText})
      : super(key: key);

  final String headtxt;
  final String hinttxt;
  final bool obscureText;
  final Color bordercolor;

  @override
  State<StatefulWidget> createState() {
    return _TextFieldWTextState();
  }
}

class _TextFieldWTextState extends State<TextFieldWText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.headtxt,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        Container(
          color: Colors.white,
          child: TextField(
            obscureText: widget.obscureText,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: widget.bordercolor),
              ),
              border: OutlineInputBorder(),
              hintText: widget.hinttxt,
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}

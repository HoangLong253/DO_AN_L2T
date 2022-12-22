import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  SmallButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  @override
  State<StatefulWidget> createState() {
    return _SmallButtonState();
  }

}

class _SmallButtonState extends State<SmallButton>{
  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              Colors.red.withOpacity(0.8)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder()
          ),
        ),
        onPressed: widget.onPressed,
        child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(widget.text),
        )
    );
  }

}
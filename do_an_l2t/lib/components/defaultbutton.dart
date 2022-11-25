import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  DefaultButton(
      {Key? key,
      required this.padding,
      required this.nextScreen,
      required this.text,
      this.color})
      : super(key: key);

  final Widget nextScreen;
  final String text;
  final EdgeInsetsGeometry padding;
  final Color? color;

  @override
  State<StatefulWidget> createState() {
    return _DefaultButtonState();
  }
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: ElevatedButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(250, 65)),
            backgroundColor: MaterialStateProperty.all(
                (widget.color != null) ? widget.color : Colors.red),
            shape: MaterialStateProperty.all(RoundedRectangleBorder())),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.nextScreen),
          );
        },
        child: Text(
          widget.text,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

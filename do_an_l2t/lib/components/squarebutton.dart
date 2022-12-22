import 'package:flutter/material.dart';

class SquareButton extends StatefulWidget {
  SquareButton(
      {Key? key,
      required this.child,
      required this.nextScreen,
      this.color,
      required this.padding});

  final Widget child;
  final Widget nextScreen;
  final EdgeInsets padding;
  late Color? color;

  @override
  State<StatefulWidget> createState() {
    return _SquareButtonState();
  }
}

class _SquareButtonState extends State<SquareButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: ElevatedButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(25, 50)),
            backgroundColor: MaterialStateProperty.all(
                (widget.color != null) ? widget.color : Colors.red),
            shape: MaterialStateProperty.all(RoundedRectangleBorder())),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => widget.nextScreen,
              ));
        },
        child: widget.child,
      ),
    );
  }
}

//EdgeInsets.fromLTRB(20, 60, 10, 0),

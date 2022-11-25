import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {

  RoundedButton({
    super.key,
    required this.padding,
    required this.size,
    required this.icon,
    required this.nextScreen,
    this.iconSize,
    this.color,
  });

  final double size;
  final IconData icon;
  final Widget nextScreen;
  final EdgeInsetsGeometry padding;

  late double? iconSize = 1.0;
  late Color? color;

  @override
  State<StatefulWidget> createState() {
    return _RoundedButtonState();
  }

}

class _RoundedButtonState extends State<RoundedButton>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all((widget.color != null) ? widget.color : Colors.red),
            shape: MaterialStateProperty.all(CircleBorder()),
            fixedSize: MaterialStateProperty.all(Size(0, widget.size))
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => widget.nextScreen,
              )
          );
        },
        child: Icon(widget.icon, size: widget.iconSize,),
      ),
    );
  }
}
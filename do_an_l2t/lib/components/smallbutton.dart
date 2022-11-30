import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  SmallButton({Key? key, required this.nextScreen, required this.text}) : super(key: key);

  final Widget nextScreen;
  final String text;
  @override
  State<StatefulWidget> createState() {
    return _SmallButtonState();
  }

}

class _SmallButtonState extends State<SmallButton>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              Colors.red.withOpacity(0.8)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder()
          ),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => widget.nextScreen,
              )
          );
        },
        child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(widget.text),
        )
    );
  }

}
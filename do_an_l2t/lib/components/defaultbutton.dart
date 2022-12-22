import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  DefaultButton({Key? key, required this.padding, this.nextScreen, required this.text, this.color, this.onPressed}) : super(key: key);

  final EdgeInsetsGeometry padding;
  final String text;
  Color? color;
  VoidCallback? onPressed;
  Widget? nextScreen;


  @override
  State<StatefulWidget> createState() {
    return _DefaultButtonState();
  }

}

class _DefaultButtonState extends State<DefaultButton>{


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: widget.padding,
      child: ElevatedButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(250 , 65)),
            backgroundColor: MaterialStateProperty.all((widget.color != null) ? widget.color : Colors.red),
            shape: MaterialStateProperty.all(RoundedRectangleBorder())
        ),
        onPressed: widget.onPressed,
        child: Text(widget.text, style: TextStyle(fontSize: 18, color: Colors.white),),
      ),
    );
  }
}
//'Avengeance Heroic Avenger'

/*import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  DefaultButton({Key? key, required this.nextScreen, required this.text, this.color}) : super(key: key);

  final Widget nextScreen;
  final String text;
  late Color? color =  Colors.red;


  @override
  State<StatefulWidget> createState() {
    return _DefaultButtonState();
  }

}

/*() {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => widget.nextScreen
            ),
          );
        },*/

class _DefaultButtonState extends State<DefaultButton>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 10, 50),
      child: ElevatedButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(250 , 65)),
            backgroundColor: MaterialStateProperty.all(widget.color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder())
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => widget.nextScreen,
              ),
          );
        },
        child: Text(widget.text),
      ),
    );
  }
}*/
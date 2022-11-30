import 'package:flutter/material.dart';

class CheckBoxWText extends StatefulWidget {
  CheckBoxWText({Key? key, required this.text, required this.color})
      : super(key: key);

  final String text;
  final Color color;
  @override
  State<StatefulWidget> createState() {
    return _CheckBoxWTextState();
  }
}

class _CheckBoxWTextState extends State<CheckBoxWText> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return widget.color;
    }
    return widget.color;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor:
              MaterialStateProperty.resolveWith((states) => getColor(states)),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(
          'Lưu mật khẩu',
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

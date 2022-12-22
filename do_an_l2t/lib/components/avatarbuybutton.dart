import 'package:flutter/material.dart';

class AvatarBuyButton extends StatefulWidget {
  AvatarBuyButton({super.key, required this.path, required this.token,});

  final String path;
  final String token;
  @override
  State<AvatarBuyButton> createState() {
    return _AvatarBuyButtonState();
  }
}

class _AvatarBuyButtonState extends State<AvatarBuyButton>{

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.red
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.path, width: 100, height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/coin.png', width: 40, height: 40,),
                Text(widget.token, style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w900),)
              ],
            ),
          ],
        ),
      ),
    );
  }

}
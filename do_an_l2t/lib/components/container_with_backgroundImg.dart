import 'package:flutter/material.dart';

class ContainerWImg extends StatelessWidget {
  ContainerWImg({Key? key, this.child}) : super(key: key);

  late Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/backgroundImg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: child,
    );
  }
}

//assets/backgroundImg.jpg

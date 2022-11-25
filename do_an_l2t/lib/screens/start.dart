import 'package:do_an_l2t/components/logo.dart';
import 'package:flutter/material.dart';

import '../components/container_with_backgroundImg.dart';
import '../components/defaultbutton.dart';
import 'login.dart';
import 'register.dart';

class Start extends StatefulWidget {
  Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ContainerWImg(
        child: Column(
          children: [
            Logo(
              height: 250,
              width: 240,
            ),
            DefaultButton(
              padding: EdgeInsets.fromLTRB(20, 5, 10, 50),
              text: 'Đăng nhập',
              nextScreen: Login(),
              color: Colors.red,
            ),
            DefaultButton(
              padding: EdgeInsets.fromLTRB(20, 5, 10, 50),
              text: 'Đăng kí',
              nextScreen: Register(),
              color: Colors.red,
            ),
          ],
        ),
      )),
    );
  }
}

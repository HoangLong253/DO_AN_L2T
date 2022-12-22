import 'package:flutter/material.dart';
import '../components/container_with_backgroundImg.dart';
import '../components/defaultbutton.dart';
import '../components/logo.dart';

import 'register.dart';
import 'confirmpage.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(
              height: 250,
              width: 240,
            ),
            DefaultButton(
              padding: EdgeInsets.fromLTRB(20, 30, 10, 50),
              text: 'Đăng nhập',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ConfirmPage()));
              },
              color: Colors.red,
            ),
            DefaultButton(
              padding: EdgeInsets.fromLTRB(20, 5, 10, 50),
              text: 'Đăng kí',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Register(showLogin: () {}),
                    ));
              },
              color: Colors.red,
            ),
          ],
        ),
      )),
    );
  }
}

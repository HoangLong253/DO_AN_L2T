import 'package:flutter/material.dart';

import '../components/smallbutton.dart';
import '../components/textfieldwtext.dart';
import '../components/container_with_backgroundImg.dart';
import '../components/headertext.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerWImg(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(
              20, 80, 20, 20
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeaderText(text: 'Đăng Ký',),
              TextFieldWText(
                obscureText: false,
                headtxt: 'Username:',
                hinttxt: 'Nhập username',
                bordercolor: Colors.red,
              ),
              TextFieldWText(
                obscureText: true,
                headtxt: 'Password:',
                hinttxt: 'Nhập password',
                bordercolor: Colors.red,
              ),
              TextFieldWText(
                obscureText: true,
                headtxt: 'Xác nhận password:',
                hinttxt: 'Nhập lại password',
                bordercolor: Colors.red,
              ),
              TextFieldWText(
                obscureText: false,
                headtxt: 'Email:',
                hinttxt: 'Nhập email',
                bordercolor: Colors.red,
              ),
              SmallButton(nextScreen: Login(), text: 'Đăng kí',),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()
                      )
                    );
                  },
                  child: Text('Bạn đã có tài khoản? Đăng nhập ngay',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, color: Colors.white),)
              )
            ],
          ),
        ),
      )
    );
  }
}

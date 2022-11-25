import 'package:do_an_l2t/screens/register.dart';
import 'package:flutter/material.dart';

import '../components/container_with_backgroundImg.dart';
import '../components/textfieldwtext.dart';

import 'menu.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.red;
    }
    return Colors.red;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerWImg(
        child: Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.fromLTRB(20, 120, 20, MediaQuery.of(context).size.height / 6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Đăng Nhập',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              TextFieldWText(
                obscureText: false,
                headtxt: 'Username: ',
                hinttxt: 'Nhập username',
                bordercolor: Colors.red,
              ),
              TextFieldWText(
                obscureText: true,
                headtxt: 'Password: ',
                hinttxt: 'Nhập password',
                bordercolor: Colors.red,
              ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith((states) => getColor(states)),
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
            ),
              ElevatedButton(
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
                          builder: (context) => Menu(),
                        )
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Đăng nhập'),
                  )
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Register()
                        )
                    );
                  },
                  child: Text('Bạn chưa có tài khoản? Đăng kí ngay',
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

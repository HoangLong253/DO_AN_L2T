import 'package:do_an_l2t/components/container_with_backgroundImg.dart';
import 'package:flutter/material.dart';
import '../components/textfieldwtext.dart';
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
              Text(
                'Đăng Ký',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
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
                          builder: (context) => Login(),
                        )
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Đăng kí'),
                  )
              ),
              /*Text(
                'Bạn đã có tài khoản? Đăng nhập ngay',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),*/
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

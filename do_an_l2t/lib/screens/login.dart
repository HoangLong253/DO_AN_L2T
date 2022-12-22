import 'package:do_an_l2t/screens/confirmpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/container_with_backgroundImg.dart';
import '../components/textfieldwtext.dart';
import '../components/checkboxwtext.dart';
import '../components/headertext.dart';
import '../components/smallbutton.dart';

import 'register.dart';

class Login extends StatefulWidget {
  Login({super.key, this.showRegister});
  VoidCallback? showRegister;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: txtUsername.text.trim(),
        password: txtPassword.text.trim(),
      );
    } on FirebaseAuthException catch (e){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message.toString())));
    } catch (e){
      print(e);
    }
  }

  @override
  void dispose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerWImg(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.fromLTRB(20, 60, 20, MediaQuery.of(context).size.height/ 6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeaderText(text: 'Đăng Nhập'),
                  TextFieldWText(
                    controller: txtUsername,
                    obscureText: false,
                    headtxt: 'Email: ',
                    hinttxt: 'Nhập emal',
                    bordercolor: Colors.red,
                  ),
                  SizedBox(height: 20,),
                  TextFieldWText(
                    controller: txtPassword,
                    obscureText: true,
                    headtxt: 'Password: ',
                    hinttxt: 'Nhập password',
                    bordercolor: Colors.red,
                  ),
                  SizedBox(height: 30,),
                  SmallButton(
                      onPressed: () {
                        if(txtPassword.text == "" || txtUsername.text == "") {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Vui lòng nhập đầy đủ các trường dữ liệu')));
                        } else {
                          signIn();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => ConfirmPage()),
                                  (route) => route.isFirst);
                        }
                      },
                      text: 'Đăng nhập'
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                                (route) => route.isFirst
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
        )
      )
    );
  }
}

/*Bạn chưa có tài khoản? Đăng kí ngay*/

/*if (txtUsername.text.isNotEmpty || txtPassword.text.isNotEmpty) {
                        signIn();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => ConfirmPage()),
                                (route) => route.isFirst);
                      } else {
                        print('alo');
                      }*/
/*CheckBoxWText(
                    isChecked: ,
                    text: 'Lưu mật khẩu',
                    color: Colors.red,
                ),*/
/*ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.red.withOpacity(0.8)),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder()
                    ),
                  ),
                  onPressed: () {
                    signIn;
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => ConfirmPage()),
                            (route) => route.isFirst);
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Đăng nhập'),
                  )
              ),*/
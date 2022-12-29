import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_l2t/provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/smallbutton.dart';
import '../components/textfieldwtext.dart';
import '../components/container_with_backgroundImg.dart';
import '../components/headertext.dart';
import '../models/user.dart';

import 'login.dart';

class Register extends StatefulWidget {
  Register({super.key, this.showLogin});
  VoidCallback? showLogin;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirm = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  Future register() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: txtEmail.text.trim(),
        password: txtPassword.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    } catch (e) {
      print(e);
    }
  }

  Future avnRegister() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: txtEmail.text.trim(),
        password: txtPassword.text.trim(),
      )
          .then((value) {
        final user = Gamer(
            username: txtUsername.text.trim(),
            email: txtEmail.text.trim(),
            level: 0,
            rank: 'Đồng I');
        createUser(user, value.user!.uid);
      });
    } on FirebaseAuthException catch (e) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    txtUsername.dispose();
    txtPassword.dispose();
    txtConfirm.dispose();
    txtEmail.dispose();
    super.dispose();
  }

  bool check() {
    if (txtUsername.text.isEmpty ||
        txtEmail.text.isEmpty ||
        txtPassword.text.isEmpty ||
        txtConfirm.text.isEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ContainerWImg(
            child: Center(
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: ListView(
          children: [
            Column(
              children: [
                HeaderText(
                  text: 'Đăng Ký',
                ),
                TextFieldWText(
                  controller: txtUsername,
                  obscureText: false,
                  headtxt: 'Username:',
                  hinttxt: 'Nhập username',
                  bordercolor: Colors.red,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldWText(
                  controller: txtPassword,
                  obscureText: true,
                  headtxt: 'Password:',
                  hinttxt: 'Nhập password',
                  bordercolor: Colors.red,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldWText(
                  controller: txtConfirm,
                  obscureText: true,
                  headtxt: 'Xác nhận password:',
                  hinttxt: 'Nhập lại password',
                  bordercolor: Colors.red,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldWText(
                  controller: txtEmail,
                  obscureText: false,
                  headtxt: 'Email:',
                  hinttxt: 'Nhập email',
                  bordercolor: Colors.red,
                ),
                SizedBox(
                  height: 20,
                ),
                SmallButton(
                  onPressed: () {
                    if (check()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:
                              Text('Vui lòng nhập đầy đủ các trường dữ liệu')));
                    } else if (txtPassword.text != txtConfirm.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Password không trùng khớp')));
                    } else {
                      register();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                          (route) => route.isFirst);
                    }
                    avnRegister();
                    //createUser(user);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                        (route) => route.isFirst);
                  },
                  text: 'Đăng kí',
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                          (route) => route.isFirst);
                    },
                    child: Text(
                      'Bạn đã có tài khoản? Đăng nhập ngay',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    )));
  }
}
/*if(check()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Vui lòng nhập đầy đủ các trường dữ liệu')));
                        } else if (txtPassword.text != txtConfirm.text) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password không trùng khớp')));
                        } else {
                          register();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                                  (route) => route.isFirst);
                        }*/

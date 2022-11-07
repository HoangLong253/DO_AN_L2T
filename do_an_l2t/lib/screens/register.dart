import 'package:flutter/material.dart';
//import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/backgroundImg.jpg'),
                fit: BoxFit.cover),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(
                20, 120, 20, MediaQuery.of(context).size.height / 3.8),
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
                Text(
                  'Username',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.red),
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Nhập username',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Text(
                  'Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Nhập password',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Text(
                  'Xác nhận Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Nhập lại password',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Text(
                  'Email',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.red),
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Nhập Email',
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.red.withOpacity(0.8)),
                      shape:
                          MaterialStateProperty.all(RoundedRectangleBorder()),
                    ),
                    onPressed: () {
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()
                          )
                      );*/
                    },
                    child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text('Đăng Ký'))),
                Text(
                  'Bạn đã có tài khoản? Đăng nhập ngay',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          )),
    );
  }
}

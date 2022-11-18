import 'package:flutter/material.dart';
import 'menu.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
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
                20, 120, 20, MediaQuery.of(context).size.height / 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Đăng Nhập',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text(
                  'Username',
                  textAlign: TextAlign.start,
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
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(
                          (states) => getColor(states)),
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
                      shape:
                          MaterialStateProperty.all(RoundedRectangleBorder()),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Menu()
                              ));
                    },
                    child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text('Đăng Nhập'))),
                Text(
                  'Bạn chưa có tài khoản? Đăng kí ngay',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          )),
    );
  }
}

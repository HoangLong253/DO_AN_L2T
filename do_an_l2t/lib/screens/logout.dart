import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../components/smallbutton.dart';
import 'info.dart';
import 'start.dart';
import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  Future signOut() async {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/backgroundImg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.all(0),
              child: Container(
                  color: Colors.red,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Bạn có chắc là muốn đăng xuất ?',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Avenger'),
                    ),
                  ))),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /*SmallButton(
                        onPressed: signOut(),
                        text: 'Đăng Xuất'
                    ),*/
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(100, 30)),
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.red),
                    ),
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Start()),
                      );
                    },
                    child: Text('Đăng xuất'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(100, 30)),
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.grey),
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Info(),
                          ));
                    },
                    child: Text('Huỷ'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

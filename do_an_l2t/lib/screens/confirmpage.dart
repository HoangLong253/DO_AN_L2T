import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../screens/login.dart';

import 'menu.dart';

class ConfirmPage extends StatelessWidget {
  ConfirmPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          } else if (snapshot.hasError) {
            return Center(child: SnackBar(content: Text('Lỗi'),),);
          } else if (snapshot.hasData){
            return Menu();
          } else {
            return Login();
          }
        },
      )
    );
  }
}

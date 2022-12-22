import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../provider/provider.dart';

class Leaderboard extends StatefulWidget {
  Leaderboard({super.key});

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  String? uid = FirebaseAuth.instance.currentUser?.uid;
  double fontSize = 25;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Leaderboard'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/backgroundImg.jpg'), fit: BoxFit.cover),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              IndexedStack(
                index: index,
                children: [
                  con1(context),
                  con2(context),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text('Offline'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text('Đối kháng'),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
  Widget con1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              color: Colors.white
          ),
          padding: EdgeInsets.all(20),
          child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: FutureBuilder<Gamer?>(
                  future: getUser(uid),
                  builder: (context, snapshot) {
                    if(snapshot.hasError){
                      return Center(child: Text('Lỗi'));
                    } else if(snapshot.hasData){
                      final user = snapshot.data;
                      return user == null
                          ? Center(child: Text('lỗi'),)
                          : buildUser1(user, uid);
                    } else {
                      return Center(child: CircularProgressIndicator(),);
                    }
                  },
                ),
              )
          )
      ),
    );
  }

  Widget con2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              color: Colors.white
          ),
          padding: EdgeInsets.all(20),
          child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: FutureBuilder<Gamer?>(
                  future: getUser(uid),
                  builder: (context, snapshot) {
                    if(snapshot.hasError){
                      return Center(child: Text('Lỗi'));
                    } else if(snapshot.hasData){
                      final user = snapshot.data;
                      return user == null
                          ? Center(child: Text('lỗi'),)
                          : buildUser2(user, uid);
                    } else {
                      return Center(child: CircularProgressIndicator(),);
                    }
                  },
                ),
              )
          )
      ),
    );
  }

  Widget buildUser1(Gamer user, uid) =>Column(
    children: [
      Text(user.username.toString().trim() + ': 125600', style: TextStyle(fontSize: 25),),
      Text(user.username.toString().trim() + ': 125600', style: TextStyle(fontSize: 25),),
      Text(user.username.toString().trim() + ': 125600', style: TextStyle(fontSize: 25),),
      Text(user.username.toString().trim() + ': 125600', style: TextStyle(fontSize: 25),),
      Text(user.username.toString().trim() + ': 125600', style: TextStyle(fontSize: 25),),
      Text(user.username.toString().trim() + ': 125600', style: TextStyle(fontSize: 25),),
      Text(user.username.toString().trim() + ': 125600', style: TextStyle(fontSize: 25),),
    ],
  );
  Widget buildUser2(Gamer user, uid) =>Column(
    children: [
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
      Text(user.username.toString().trim() + ' Vàng V: 125600', style: TextStyle(fontSize: 22),),
    ],
  );
}
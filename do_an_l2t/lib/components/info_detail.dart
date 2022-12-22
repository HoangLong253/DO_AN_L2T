import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../provider/provider.dart';

class InfoDetail extends StatelessWidget {
  String? uid1 = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 50, 0, 40),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: 120,
              height: 120,
              color: Colors.red,
              child: Center(
                child: Image(
                  image: AssetImage('assets/stanlee_default.png'),
                ),
              )
          ),
          Padding(padding: EdgeInsets.all(2)),
          Center(
            child: FutureBuilder<Gamer?>(
              future: getUser(uid1),
              builder: (context, snapshot) {
                if(snapshot.hasError){
                  return Center(child: Text('Lỗi'));
                } else if(snapshot.hasData){
                  final user = snapshot.data;
                  return user == null
                      ? Center(child: Text('lỗi'),)
                      : buildUser(user, uid1);
                } else {
                  return Center(child: CircularProgressIndicator(),);
                }
              },
            )
          )
        ],
      ),
    );
  }
}

Widget buildUser(Gamer user, uid) => Container(
  color: Colors.grey,
  child: SizedBox(
      height: 120,
      width: 200,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Username: ', style: TextStyle(color: Colors.white),),
                Text(user.username.toString(), style: TextStyle(color: Colors.white),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Rank: ', style: TextStyle(color: Colors.white),),
                Text(user.rank.toString(), style: TextStyle(color: Colors.white),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Level: ', style: TextStyle(color: Colors.white),),
                Text(user.level.toString(), style: TextStyle(color: Colors.white),),
              ],
            ),
          ],
        ),
      )
  ),
);

/**/

/*Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Text('darkbicycle862', style: TextStyle(color: Colors.white),),
                  Text('Rank: Đồng I', style: TextStyle(color: Colors.white),),
                  Text('Level: 5', style: TextStyle(color: Colors.white),),
                ],
              ),*/

/*Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.red,
            child: Image(
              image: AssetImage('assets/stanlee_default.png'),
              height: 75,
            ),
          ),
          Container(
            color: Colors.grey,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('darkbicycle862'),
                  Text('Rank: Đồng I'),
                  Text('Level: 5'),
                ],
              ),
            ),
          )
        ],
      ),*/
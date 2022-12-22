import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_l2t/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/defaultbutton.dart';
import '../components/info_detail.dart';
import '../components/container_with_backgroundImg.dart';
import '../components/info_box.dart';

import '../provider/provider.dart';
import 'logout.dart';


class Info extends StatefulWidget {
  Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  String? uid = FirebaseAuth.instance.currentUser?.uid;
  TextEditingController txtChange = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thông tin chung'),
          backgroundColor: Colors.red,
        ),
        body: ContainerWImg(
          child: SingleChildScrollView(
            child: Column(
              children: [
                FutureBuilder<Gamer?>(
                  future: getUser(uid),
                  builder: (context, snapshot) {
                    if(snapshot.hasError){
                      return Center(child: Text('Lỗi'));
                    } else if(snapshot.hasData){
                      final user = snapshot.data;
                      return user == null
                          ? Center(child: Text('lỗi'),)
                          : buildUser(user, uid);
                    } else {
                      return Center(child: CircularProgressIndicator(),);
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(120 , 30)),
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                    ),
                    onPressed: () {
                      editUsername(context);
                    },
                    child: Text('Đổi username'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(100 , 30)),
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Logout())
                      );
                    },
                    child: Text('Đăng xuất'),
                  ),
                ),
              ],
            ),
          )
        )
    );
  }
  void editUsername(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bContext) {
          return Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey
              ),
              height: MediaQuery.of(context).size.height * .60,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text('Đổi tên', style: TextStyle(color: Colors.white, fontSize: 20)),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.cancel,),
                          ),
                        ],
                      ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: TextField(
                                controller: txtChange,
                              )
                          )
                      ),
                    ],
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green)
                      ),
                      onPressed: () {
                        final docUser = FirebaseFirestore.instance
                            .collection('users')
                            .doc(uid);

                        docUser.update({
                          'username': txtChange.text.trim(),
                        });

                        Navigator.pop(context);
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      )
                  )
                ],
              )
          );
        }
    );
  }
}

Widget buildUser(Gamer user, uid) =>Column(
  children: [
    InfoDetail(),
    InfoBox(text: 'Username: ' + user.username.toString().trim(),),
    InfoBox(text: 'Câu trả lời đúng: 22'),
    InfoBox(text: 'Câu trả lời sai: 11'),
    InfoBox(text: 'Số trận thắng đối kháng: 3'),
  ],
);



/**/

//'Câu trả lời đúng: 22',
//'Câu trả lời sai: 11',
//'Số trận thắng đối kháng: 3',

/*DefaultButton(
                  padding: EdgeInsets.zero,
                  nextScreen: Logout(),
                  text: 'Đăng xuất'
              )*/

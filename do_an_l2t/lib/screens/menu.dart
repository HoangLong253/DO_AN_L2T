import 'package:flutter/material.dart';

import '../components/container_with_backgroundImg.dart';
import '../components/defaultbutton.dart';
import '../components/logo.dart';
import '../components/roundedbutton.dart';
import '../screens/competitive.dart';
import '../screens/store.dart';

import 'mode.dart';
import 'setting.dart';
import 'info.dart';
import 'leaderboard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerWImg(
        child: Center(
            child: ListView(
              children: [
                Container(
                  //padding: EdgeInsets.all(10),
                  //margin: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(context).size.height),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Logo(
                            height: 250,
                            width: 240
                        ),
                        //padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                        DefaultButton(
                            padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Mode())
                              );
                            },
                            text: 'Offline',
                            color: Colors.red,
                        ),
                        //padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                        DefaultButton(
                            padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Competitive())
                              );
                            },
                            text: 'Đối kháng',
                            color: Colors.red,
                        ),
                        //padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                        DefaultButton(
                            padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Leaderboard())
                              );
                            },
                            text: 'Leaderboard',
                            color: Colors.red,
                        ),
                        //padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                        DefaultButton(
                            padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Store())
                              );
                            },
                            text: 'Cửa hàng',
                            color: Colors.red,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //padding: EdgeInsets.fromLTRB(40, 0, 50, 0),
                              RoundedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Setting(),
                                        ),
                                    );
                                  },
                                  padding: EdgeInsets.fromLTRB(40, 0, 50, 0),
                                  size: 60,
                                  icon: Icons.settings,
                              ),
                              //padding: EdgeInsets.fromLTRB(60, 0, 40, 0),
                              RoundedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Info(),
                                    ),
                                  );
                                },
                                  padding: EdgeInsets.fromLTRB(60, 0, 40, 0),
                                  size: 60,
                                  icon: Icons.account_circle,
                                  iconSize: 25,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                )
              ],
            )
        ),
      )
    );
  }
}
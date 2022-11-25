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
                            nextScreen: Mode(),
                            text: 'Offline',
                        ),
                        //padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                        DefaultButton(
                            padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                            nextScreen: Competitive(),
                            text: 'Đối kháng',
                        ),
                        //padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                        DefaultButton(
                            padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                            nextScreen: Leaderboard(),
                            text: 'Leaderboard'
                        ),
                        //padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                        DefaultButton(
                            padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                            nextScreen: Store(),
                            text: 'Cửa hàng',
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //padding: EdgeInsets.fromLTRB(40, 0, 50, 0),
                              RoundedButton(
                                  padding: EdgeInsets.fromLTRB(40, 0, 50, 0),
                                  size: 60,
                                  icon: Icons.settings,
                                  nextScreen: Setting(),
                              ),
                              //padding: EdgeInsets.fromLTRB(60, 0, 40, 0),
                              RoundedButton(
                                  padding: EdgeInsets.fromLTRB(60, 0, 40, 0),
                                  size: 60,
                                  icon: Icons.account_circle,
                                  nextScreen: Info(),
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
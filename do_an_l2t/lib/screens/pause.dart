import '../components/roundedbutton.dart';
import 'question.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Pause extends StatefulWidget {
  const Pause({super.key});

  @override
  State<Pause> createState() => _PauseState();
}

class _PauseState extends State<Pause> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/backgroundImg.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  //padding: EdgeInsets.all(10),
                  //margin: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(context).size.height),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.red.shade900,
                                  border: Border.all(color: Colors.black54)
                              ),
                              child: Center(
                                child: Text(
                                  'Màn 1',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontFamily: 'Avenger'
                                  ),
                                ),
                              )
                          ),
                          Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  border: Border.all(color: Colors.black54)
                              ),
                              child: Center(
                                child: Text(
                                  'Tạm dừng',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontFamily: 'Avenger'
                                  ),
                                ),
                              )
                          ),
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.red.shade700,
                                border: Border.all(color: Colors.black54)
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  //Icons.home_sharp
                                  RoundedButton(
                                      padding: EdgeInsets.zero,
                                      size: 50,
                                      icon: Icons.home_sharp,
                                      onPressed: () {
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(
                                           builder: (context) => Menu(),
                                         ),
                                      );
                                    },
                                  ),
                                  RoundedButton(
                                      padding: EdgeInsets.zero,
                                      size: 50,
                                      icon: Icons.refresh_sharp,
                                    onPressed: () {
                                      Navigator.pop(
                                        context,
                                      );
                                    },
                                  ),
                                  RoundedButton(
                                      padding: EdgeInsets.zero,
                                      size: 50,
                                      icon: Icons.play_arrow,
                                    onPressed: () {
                                      Navigator.pop(
                                        context,
                                      );
                                    },
                                  ),
                                ]
                            )
                          )
                        ]
                    )
                )
            )
        )
    );
  }

}


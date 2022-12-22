import 'package:flutter/material.dart';

import '../components/container_with_backgroundImg.dart';
import '../components/headertext.dart';
import '../components/squarebutton.dart';

import 'complete.dart';
import 'question.dart';

class Medmode extends StatefulWidget {
  const Medmode({super.key});

  @override
  State<Medmode> createState() => _MedmodeState();
}

class _MedmodeState extends State<Medmode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trung bình'),
        backgroundColor: Colors.red,
      ),
      body: ContainerWImg(
          child: Center(
            child: ListView(
              children: [
                Container(
                  //padding: EdgeInsets.all(10),
                  //margin: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(context).size.height),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeaderText(
                            text: 'Marvel Conquest'
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('1'),
                                  nextScreen: Question(),
                                ),
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('2'),
                                  nextScreen: Question(),
                                ),
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('3'),
                                  nextScreen: Question(),
                                ),
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('4'),
                                  nextScreen: Question(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('5'),
                                  nextScreen: Question(),
                                ),
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('6'),
                                  nextScreen: Question(),
                                ),
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('7'),
                                  nextScreen: Question(),
                                ),
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('8'),
                                  nextScreen: Question(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('9'),
                                  nextScreen: Question(),
                                ),
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  nextScreen: Question(),
                                  child: Text('10'),
                                ),
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('11'),
                                  nextScreen: Question(),
                                ),
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('12'),
                                  nextScreen: Question(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SquareButton(
                                  padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                                  child: Text('13'),
                                  nextScreen: Complete(),
                                  color: Colors.purple,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                ),
              ],
            ),
          )
      )
    );
  }
}

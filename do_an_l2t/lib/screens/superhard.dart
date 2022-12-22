import 'package:do_an_l2t/screens/question.dart';
import 'package:flutter/material.dart';

import '../components/container_with_backgroundImg.dart';
import '../components/headertext.dart';
import '../components/squarebutton.dart';
import 'complete.dart';

class SuperHardMode extends StatefulWidget {
  const SuperHardMode({super.key});

  @override
  State<SuperHardMode> createState() => _SuperHardModeState();
}

class _SuperHardModeState extends State<SuperHardMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Siêu khó'),
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
                  HeaderText(text: 'Marvel Conquest'),
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
                        nextScreen: Complete(),
                        child: Text('10'),
                        color: Colors.purple,
                      )
                    ],
                  )
                ],
              )),
            ],
          ),
        )));
  }
}

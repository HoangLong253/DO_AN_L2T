import 'package:do_an_mon/screens/mode.dart';
import 'package:do_an_mon/screens/question.dart';
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
                          height: 65,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.red.shade900,
                              border: Border.all(color: Colors.black54)),
                          child: Center(
                            child: Text(
                              'MÀN 1',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 48,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              border: Border.all(color: Colors.black54)),
                          child: Center(
                            child: Text(
                              'Tạm dừng',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 48,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.red.shade700,
                            border: Border.all(color: Colors.black54)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.red),
                                  shape:
                                      MaterialStateProperty.all(CircleBorder()),
                                  fixedSize:
                                      MaterialStateProperty.all(Size(0, 50)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Menu(),
                                      ));
                                },
                                child: Center(child: Icon(Icons.home_sharp))),
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.red),
                                    shape: MaterialStateProperty.all(
                                        CircleBorder()),
                                    fixedSize:
                                        MaterialStateProperty.all(Size(0, 50))),
                                onPressed: () {
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Question(),
                                      ));
                                },
                                child:
                                    Center(child: Icon(Icons.refresh_sharp))),
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.red),
                                    shape: MaterialStateProperty.all(
                                        CircleBorder()),
                                    fixedSize:
                                        MaterialStateProperty.all(Size(0, 50))),
                                onPressed: () {
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Question(),
                                      ));
                                },
                                child: Center(child: Icon(Icons.play_arrow))),
                          ],
                        ),
                      )
                    ])))));
  }
}

import 'package:flutter/material.dart';
import 'info.dart';

class SuperHardMode extends StatefulWidget {
  const SuperHardMode({super.key});

  @override
  State<SuperHardMode> createState() => _SuperHardModeState();
}

class _SuperHardModeState extends State<SuperHardMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          Container(
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
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                    child: Text(
                      'Marvel Conquest',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('1'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('2'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('3'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('4'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('5'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('6'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('7'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('8'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('9'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('10'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: Text('11'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(25, 50)),
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder())),
                          onPressed: () {},
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ))),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'mode.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
                    padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: Text(
                      'Marvel Conquest',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(250, 65)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder())),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mode(),
                            ));
                      },
                      child: Text('Offline'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(250, 65)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder())),
                      onPressed: () {},
                      child: Text('Đối kháng'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(250, 65)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder())),
                      onPressed: () {},
                      child: Text('Leaderboard'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(250, 65)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder())),
                      onPressed: () {},
                      child: Text('Cửa hàng'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 0, 50, 40),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(Colors.red),
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                fixedSize:
                                    MaterialStateProperty.all(Size(0, 60))),
                            onPressed: () {},
                            child: Icon(Icons.settings),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 0, 40, 40),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(Colors.red),
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                fixedSize:
                                    MaterialStateProperty.all(Size(0, 60))),
                            onPressed: () {},
                            child: Container(
                              child: Icon(
                                Icons.account_circle,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
        ],
      )),
    );
  }
}

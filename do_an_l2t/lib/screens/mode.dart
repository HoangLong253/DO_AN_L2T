import 'package:flutter/material.dart';
import 'ezmode.dart';
import 'medmode.dart';
import 'hardmode.dart';
import 'superhard.dart';

class Mode extends StatefulWidget {
  const Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chế độ chơi'),
        backgroundColor: Colors.red,
      ),
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
                  height: MediaQuery.of(context).size.height ,
                  width: MediaQuery.of(context).size.width ,
                  child: Container(
                    //padding: EdgeInsets.all(10),
                    //margin: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(context).size.height),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder())
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SuperHardMode(),
                                      )
                                  );
                                });
                              },
                              child: Text('Siêu khó'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder())
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Hardmode(),
                                      )
                                  );
                                });
                              },
                              child: Text('Khó'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder())
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Medmode(),
                                      )
                                  );
                                });
                              },
                              child: Text('Trung bình'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder())
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Ezmode(),
                                      )
                                  );
                                });
                              },
                              child: Text('Dễ'),
                            ),
                          ),
                        ],
                      )
                  )
              ),
            ],
          )
      ),
    );
  }
}

/*ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                      shape: MaterialStateProperty.all(CircleBorder()),
                                      fixedSize: MaterialStateProperty.all(Size(0, 80))
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Info(),
                                        )
                                    );
                                  },
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.account_circle,
                                      size: 50,
                                    ),
                                  ),
                                ),*/

/*IconButton(
                                  style: ButtonStyle(
                                      foregroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                      shape: MaterialStateProperty.all(CircleBorder()),
                                      fixedSize: MaterialStateProperty.all(Size(0, 80))
                                  ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Info(),
                                          )
                                      );
                                    },
                                    icon: Icon(
                                      Icons.account_circle,
                                      color: Colors.white,
                                    ),
                                  iconSize: 30,
                                )
                              )*/

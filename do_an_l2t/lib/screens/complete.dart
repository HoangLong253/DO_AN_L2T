import 'package:do_an_l2t/components/roundedbutton.dart';
import 'package:flutter/material.dart';

import '../components/container_with_backgroundImg.dart';

import 'menu.dart';
import 'question.dart';

class Complete extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _CompleteState();
  }
}

class _CompleteState extends State<Complete>{
  double howmany = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerWImg(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red.shade700,
                    border: Border.all(color: Colors.black54)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Hoàn thành màn chơi',
                        style: TextStyle(fontSize: 46, color: Colors.white, fontFamily: 'Avenger'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('2000000',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    /*Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Hoàn thành màn chơi',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),*/
                    Padding(padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('Tổng số câu:', style: TextStyle(fontSize: 20, color: Colors.white),),
                        Text(howmany.toString() + '/10', style: TextStyle(fontSize: 20, color: Colors.white),),
                      ],),
                    ),
                  ],
                ),
              ),
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
          ],
        ),
      )
    );
  }

}
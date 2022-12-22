import 'package:do_an_l2t/components/container_with_backgroundImg.dart';
import 'package:do_an_l2t/components/defaultbutton.dart';
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
      body: ContainerWImg(
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            DefaultButton(
              padding: EdgeInsets.fromLTRB(20, 120, 10, 0),
              text: 'Siêu khó',
              nextScreen: SuperHardMode(),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuperHardMode())
                );
              },
            ),
            DefaultButton(
              padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
              text: 'Khó',
              nextScreen: Hardmode(),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hardmode())
                );
              },
            ),
            DefaultButton(
              padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
              text: 'Trung bình',
              nextScreen: Medmode(),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Medmode())
                );
              },
            ),
            DefaultButton(
              padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
              text: 'Dễ',
              nextScreen: Ezmode(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ezmode())
                );
              },
            ),
          ],
        )
      )
    );
  }
}

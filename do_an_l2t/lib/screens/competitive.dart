import 'package:do_an_l2t/components/container_with_backgroundImg.dart';
import 'package:do_an_l2t/components/defaultbutton.dart';
import 'package:flutter/material.dart';

class Competitive extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CompetitiveState();
  }
}

class _CompetitiveState extends State<Competitive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Đối kháng'),
          backgroundColor: Colors.red,
        ),
        body: ContainerWImg(
          child: DefaultButton(
              padding: EdgeInsets.fromLTRB(75, 270, 75, 250),
              nextScreen: Text(
                'Mẫu',
              ),
              text: 'Tìm trận nhanh...'),
        ));
  }
}

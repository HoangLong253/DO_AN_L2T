import 'package:flutter/material.dart';

class InfoDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 50, 0, 40),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: 120,
              height: 120,
              color: Colors.red,
              child: Center(
                child: Image(
                  image: AssetImage('assets/stanlee_default.png'),
                ),
              )
          ),
          Padding(padding: EdgeInsets.all(2)),
          Container(
            color: Colors.grey,
            child: SizedBox(
              height: 120,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Text('darkbicycle862', style: TextStyle(color: Colors.white),),
                  Text('Rank: Đồng I', style: TextStyle(color: Colors.white),),
                  Text('Level: 5', style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

/*Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.red,
            child: Image(
              image: AssetImage('assets/stanlee_default.png'),
              height: 75,
            ),
          ),
          Container(
            color: Colors.grey,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('darkbicycle862'),
                  Text('Rank: Đồng I'),
                  Text('Level: 5'),
                ],
              ),
            ),
          )
        ],
      ),*/
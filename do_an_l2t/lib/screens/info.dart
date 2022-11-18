import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  double padding = 10;
  double padSize = 20;
  double height = 65;
  double width = 250;
  //String name = 'name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin chung'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/backgroundImg.jpg'), fit: BoxFit.cover),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(40),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                        image: AssetImage('assets/stanlee_default.jpg'),
                        height: 53,
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
                ),
            ),
            Padding(
                padding: EdgeInsets.all(padSize),
                child: Container(
                  color: Colors.red,
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: Text(
                      'ID: #0001',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
            ),
            Padding(
                padding: EdgeInsets.all(padSize),
                child: Container(
                  color: Colors.red,
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: Text(
                      'Câu trả lời đúng: 22',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
            ),
            Padding(
                padding: EdgeInsets.all(padSize),
                child: Container(
                  color: Colors.red,
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: Text(
                      'Câu trả lời sai: 11',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.all(padSize),
              child: Container(
                color: Colors.red,
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Text(
                    'Số trận thắng đối kháng: 3',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

//'Câu trả lời đúng: 22',
//'Câu trả lời sai: 11',
//'Số trận thắng đối kháng: 3',

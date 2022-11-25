import 'package:flutter/material.dart';

class Leaderboard extends StatefulWidget {
  Leaderboard({super.key});

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Leaderboard'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/backgroundImg.jpg'),
                fit: BoxFit.cover),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        color: Colors.white),
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 2.0,
                      width: MediaQuery.of(context).size.width / 2.0,
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              Text(
                                'darkbicyle:         125600000',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'darkbicyle:         125600000',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'darkbicyle:         125600000',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'darkbicyle:         125600000',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'darkbicyle:         125600000',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'darkbicyle:         125600000',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'darkbicyle:         125600000',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'darkbicyle:         125600000',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {},
                    child: Text('Offline'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {},
                    child: Text('Đối kháng'),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

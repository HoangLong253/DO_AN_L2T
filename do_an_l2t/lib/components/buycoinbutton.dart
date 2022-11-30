import 'package:flutter/material.dart';

class BuyCoinButton extends StatefulWidget {
  BuyCoinButton({super.key, required this.token, required this.money});

  final String token;
  final String money;

  @override
  State<StatefulWidget> createState() {
    return _BuyCoinButtonState();
  }
}

class _BuyCoinButtonState extends State<BuyCoinButton> {
  double width = 95;
  double coinSize = 65;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        color: Colors.red,
        child: SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Stack(
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/coin.png'),
                    width: coinSize,
                    height: coinSize,
                  ),
                  Text(widget.token,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.redAccent,
                          ),
                          width: 150,
                          height: 50,
                          child: Center(
                            child: Text(widget.money),
                          ),
                        ),
                      ))
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../components/buycoinbutton.dart';

class TokenStore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TokenStoreState();
  }
}

class _TokenStoreState extends State<TokenStore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          BuyCoinButton(token: '200', money: '99.000đ'),
          BuyCoinButton(token: '500', money: '199.000đ'),
          BuyCoinButton(token: '1200', money: '499.000đ'),
          BuyCoinButton(token: '2000', money: '100.000.000đ'),
          BuyCoinButton(token: '5000', money: '3.500.000đ'),
        ],
      ),
    );
  }
}

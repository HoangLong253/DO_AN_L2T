import 'package:do_an_l2t/components/avatarbuybutton.dart';
import 'package:flutter/material.dart';

class AvatarStore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AvatarStoreState();
  }

}

class _AvatarStoreState extends State<AvatarStore>{
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AvatarBuyButton(
                    path: 'assets/char_nophong/blackwidow.png',
                    token: '199'
                ),
                AvatarBuyButton(
                    path: 'assets/char_nophong/cap.png',
                    token: '299'
                ),
                AvatarBuyButton(
                    path: 'assets/char_nophong/blackpanther.png',
                    token: '299'
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AvatarBuyButton(
                    path: 'assets/char_nophong/drstrang.png',
                    token: '399'
                ),
                AvatarBuyButton(
                    path: 'assets/char_nophong/ironman.png',
                    token: '499'
                ),
                AvatarBuyButton(
                    path: 'assets/char_nophong/thor.png',
                    token: '599'
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AvatarBuyButton(
                    path: 'assets/char_nophong/yondu.png',
                    token: '599'
                ),
                AvatarBuyButton(
                    path: 'assets/char_nophong/loki.png',
                    token: '999'
                ),
                AvatarBuyButton(
                    path: 'assets/char_nophong/hoicham.jpg',
                    token: '???'
                )
              ],
            )
          ],
        )
    );
  }
}
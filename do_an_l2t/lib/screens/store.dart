import 'package:flutter/material.dart';

import '../components/container_with_backgroundImg.dart';

import 'avatar_store.dart';
import 'token_store.dart';

class Store extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StoreState();
  }
}

class _StoreState extends State<Store>{
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cửa hàng'),
          backgroundColor: Colors.red,
        ),
        body: ContainerWImg(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(100, 30)),
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text('Token', style: TextStyle(color: Colors.white),),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(100, 30)),
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text('Avatar', style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
              Expanded(
                child: IndexedStack(
                  index: index,
                  children: [
                    TokenStore(),
                    AvatarStore(),
                  ],
                ),
              ),

            ],
          )
        ),
    );
  }
}
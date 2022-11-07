import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'screens/register.dart';
import 'screens/login.dart';
//import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Container(
                padding: EdgeInsets.all(45),
                //margin: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(context).size.height),
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 40, 20, 150),
                        child: Text(
                          'Marvel Conquest',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.red,
                          ),
                        ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 40, 10, 50),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder())
                        ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login()
                            )
                        );
                      },
                      child: Text('Đăng nhập'),
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 40, 10, 50),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder())
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()
                              )
                          );
                        },
                        child: Text('Đăng kí'),
                      ),
                    ),
                  ],
                )
            )
        ),
      ),
    );
  }
}

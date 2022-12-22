import 'pause.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  double buttonRoundSize = 60;
  double questionNumSize = 35;
  double powerTextSize = 10;
  double bottomButton = 0;
  double point = 0;

  IconData volumn = Icons.volume_up;
  IconData change = Icons.volume_mute;
  bool isPressed = true;

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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                              width: questionNumSize,
                              height: questionNumSize,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    )
                                ),
                              )
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                shape: MaterialStateProperty.all(CircleBorder()),
                                fixedSize: MaterialStateProperty.all(Size(0, 35))
                            ),
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                            child: Center(
                              child: Icon((isPressed == false) ? Icons.volume_mute : Icons.volume_up
                              ),
                            )
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                shape: MaterialStateProperty.all(CircleBorder()),
                                fixedSize: MaterialStateProperty.all(Size(0, 35))
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Pause(),
                                  )
                              );
                            },
                            child: Center(
                              child: Icon(
                                Icons.pause,
                              ),
                            )
                        ),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                        child: Row(
                          children: [
                            Text('Điểm: ', style: TextStyle(color: Colors.white),),
                            Text(point.toString(), style: TextStyle(color: Colors.white),),
                          ],
                        ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                      child: Container(
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Ai là vua của Wakanda ?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder())
                        ),
                        onPressed: () {

                        },
                        child: Text('TChalla'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder())
                        ),
                        onPressed: () {

                        },
                        child: Text('Chadwick Boseman'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder())
                        ),
                        onPressed: () {

                        },
                        child: Text('Tony Stark'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(250 , 65)),
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder()),
                        ),
                        onPressed: () {
                        },
                        child: Text('Ben Parker'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(bottomButton),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                  shape: MaterialStateProperty.all(CircleBorder()),
                                  fixedSize: MaterialStateProperty.all(Size(0, buttonRoundSize))
                              ),
                              onPressed: () {},
                              child: Center(
                                  child: Text(
                                    'Gợi ý',
                                    style: TextStyle(
                                      fontSize: powerTextSize,
                                    ),
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(bottomButton),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                  shape: MaterialStateProperty.all(CircleBorder()),
                                  fixedSize: MaterialStateProperty.all(Size(0, buttonRoundSize))
                              ),
                              onPressed: () {},
                              child: Center(
                                  child: Text(
                                    '50/50',
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(bottomButton),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                  shape: MaterialStateProperty.all(CircleBorder()),
                                  fixedSize: MaterialStateProperty.all(Size(0, buttonRoundSize))
                              ),
                              onPressed: () {},
                              child: Center(
                                  child: Text(
                                    'Đáp án',
                                    style: TextStyle(
                                      fontSize: powerTextSize,
                                    ),
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(bottomButton),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                  shape: MaterialStateProperty.all(CircleBorder()),
                                  fixedSize: MaterialStateProperty.all(Size(0, buttonRoundSize))
                              ),
                              onPressed: () {},
                              child: Center(
                                  child: Text(
                                    'Ngưng đọng thời gian',
                                    style: TextStyle(
                                      fontSize: 7.9,
                                    ),
                                  )
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                )
            )
        ),
      ),
    );
  }
}

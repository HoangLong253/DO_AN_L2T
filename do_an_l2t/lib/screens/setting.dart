import 'package:flutter/material.dart';

const List<String> list = <String>['Thấp', 'Trung bình', 'Cao'];

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    double _currentSliderValue = 40;
    String dropdownValue = list.first;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cài đặt'),
        backgroundColor: Colors.red,
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgroundImg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black54)),
                    child: Center(
                      child: Text(
                        'Chất lượng',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        color: Colors.grey,
                      ),
                      height: 50,
                      width: 250,
                      child: Center(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: Icon(Icons.arrow_drop_down),
                          onChanged: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ))),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black54)),
                    child: Center(
                      child: Text(
                        'Âm thanh',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              Container(
                width: 260,
                child: Slider(
                  value: _currentSliderValue,
                  activeColor: Colors.red,
                  inactiveColor: Colors.red,
                  max: 100,
                  divisions: 5,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black54)),
                    child: Center(
                      child: Text(
                        'Âm thanh',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  Text(
                    'Bật SFX',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          )),
    );
  }
}

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red;
  }
  return Colors.red;
}
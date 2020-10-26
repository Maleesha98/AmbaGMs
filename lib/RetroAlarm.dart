<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
=======

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
//import 'package:testapp3/main.dart';
>>>>>>> ff151b55a123891bdee597d5931ee0163c3094f8
import 'main.dart';
import 'dart:ui';

/*void main() => runApp(MaterialApp(
  home: RetroAlarm(),
));*/

class RetroAlarm extends StatefulWidget {
  @override
  _RetroAlarmState createState() => _RetroAlarmState();
}

class _RetroAlarmState extends State<RetroAlarm> {

  int h=09,min=26;
 // Map<String, int> Alarmdata = {'h':09,'min':26};
 // int hour,minute;
  String msg="Let's sleep";
  _RetroAlarmState(){

    var now = new DateTime.now();
    String hour = DateFormat('H').format(now);
    String minute = DateFormat('m').format(now);
    //this.minute=int.parse(minute);
    //this.hour=int.parse(hour);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/wall.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                  children: [
                  SizedBox(height: 50.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('MARCUS:',
                    style: TextStyle(fontFamily: 'Joystick',
                        fontSize: 18.0,
                        color: Color.fromRGBO(0, 143, 255, 0.8))
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Set your desires",
                    style: TextStyle(fontFamily: 'Joystick',
                        fontSize: 18.0,
                        color: Colors.white)),
              ),
              SizedBox(height: 40.0),
              Wrap(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 180,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image(
                        image: AssetImage('Assets/man.jpg'
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("Assets/window.png"),
                          fit: BoxFit.cover,)),
                    height: 80,
                    child: FlatButton(
                        padding: EdgeInsets.fromLTRB(0, -10, 0, -10),
                        color: Colors.transparent,
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Text('Set an App',
                          style: TextStyle(
                            fontFamily: 'Joystick',
                            fontSize: 10.0,
                            color: Colors.yellow,
                          ),
                        )
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        child: FlatButton(
                          padding: EdgeInsets.fromLTRB(0, -10, 0, -10),
                          color: Colors.transparent,
                          onPressed: () {
                            setState(() {
                              if (h<12)h++;
                              else h=00;
                            });
                          },
                          child: Image(
                            image: AssetImage('Assets/up.png'),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        child: FlatButton(
                          padding: EdgeInsets.fromLTRB(0, -10, 0, -10),
                          color: Colors.transparent,
                          onPressed: () {
                            setState(() {
                              if (min<59)min++;
                              else min=00;
                            });
                          },
                          child: Image(
                            image: AssetImage('Assets/up.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(

                    child: Row(
                      children: [
                        Text(h.toString().padLeft(2, '0'),
                            style: TextStyle(fontFamily: 'Joystick',
                                fontSize: 85.0,
                                color: Colors.white)),
                        Text(":",
                            style: TextStyle(fontFamily: 'Joystick',
                                fontSize: 85.0,
                                color: Colors.white)),
                        Text(min.toString().padLeft(2, '0')
                            ,style: TextStyle(fontFamily: 'Joystick',
                                fontSize: 85.0,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 80,
                        child: FlatButton(
                          padding: EdgeInsets.fromLTRB(-5, -5, -5, -5),
                          color: Colors.transparent,
                          onPressed: () {
                            setState(() {
                              if(h>0)h--;
                            });
                          },
                          child: Image(
                            image: AssetImage('Assets/down.png'),
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        child: FlatButton(
                          padding: EdgeInsets.all(-2),
                          color: Colors.transparent,
                          onPressed: () {
                            setState(() {
                              if(min>0)min--;
                            });
                          },
                          child: Image(
                            image: AssetImage('Assets/down.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(-5, -5, -5, -5),
                      color: Colors.transparent,
                      onPressed: () {
                        //Navigator.pushReplacementNamed(context, '/main');
                        /*Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>RetroHome())
                        );*/
                        //Navigator.pop(context=>RetroHome());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RetroHome(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('Assets/Button.png'),
                      ),
                    ),
                  ),
                ],
              ),
          ]),
            ),
        ),
      ),
    ));
  }
}